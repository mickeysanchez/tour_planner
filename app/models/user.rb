# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)      not null
#  password_digest :string(255)      not null
#  token           :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :email, :password
  attr_reader :password
  
  validates :password_digest, presence: { message: "You gotta have a password!" }
  validates :password, length: { minimum: 6, allow_nil: true }
  validates :token, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  
  before_validation :ensure_session_token
  
  has_many :band_memberships,
    class_name: 'BandMembership',
    foreign_key: :member_id
  
  has_many :bands, through: :band_memberships, source: :band
  
  
  def is_in_band?(band)
    !!BandMembership
        .where("member_id = ? AND band_id = ?", self.id, band.id)
        .first
  end
  
  def is_band_admin?(band)
    !!BandMembership
        .where("member_id = ? AND band_id = ? AND admin = true", self.id, band.id)
        .first
  end
  
  def change_password!(old_pw, new_pw)
    if self.is_password?(old_pw)
      self.password = new_pw
      self.save
      true
    else
      false
    end
  end
  
  def self.find_by_credentials(email, password)
    user = User.find_by_email(email)
    user.try(:is_password?, password) ? user : nil
  end
  
  def self.generate_session_token
    SecureRandom::urlsafe_base64(16)
  end
  
  def reset_session_token!
    self.token = User.generate_session_token
    self.save
    self.token
  end
  
  def is_password?(unencrypted_password)    
    BCrypt::Password.new(self.password_digest).is_password?(unencrypted_password)
  end
  
  def password=(unencrypted_password)
    if unencrypted_password.present?
      @password = unencrypted_password
      self.password_digest =  BCrypt::Password.create(unencrypted_password)
    end
  end
  
  private
  
  def ensure_session_token
    self.token ||= User.generate_session_token
  end
end
