class User < ActiveRecord::Base
  attr_accessible :email, :password
  attr_reader :password
  
  validates :password_digest, presence: true
  validates :password, length: { minimum: 6, allow_nil: true }
  validates :token, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  
  before_validation :ensure_session_token
  
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
