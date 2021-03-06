# == Schema Information
#
# Table name: bands
#
#  id                 :integer          not null, primary key
#  name               :string(255)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#  active             :boolean          default(TRUE)
#

class Band < ActiveRecord::Base
  default_scope where(active: true)
  
  attr_accessible :name, :image
  default_scope order('name')

  validates :name, presence: true
  
  has_attached_file :image, 
    styles: { medium: "500x500#", thumb: "200x200#" }, 
    default_url: "user_missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  has_many :events, dependent: :destroy, order: 'date ASC'
           
  has_many :tours, 
    through: :events, 
    source: :tour, 
    uniq: true
           
  has_many :band_memberships, dependent: :destroy
  
  has_many :members,
    through: :band_memberships,
    source: :member
    
  has_many :member_requests,
    class_name: 'MemberRequest',
    foreign_key: :band_id,
    dependent: :destroy 
    
  has_many :notifications, as: :notifiable
  
  include PgSearch
  pg_search_scope :search_by_name, against: :name
     
####

  def admins
    self.members.where("admin = true")
  end

  def make_member!(user)
    membership = self.band_memberships.new
    membership.member = user
    membership.save
  end
  
  def make_admin!(user)
    self.find_membership(user).toggle!(:admin)
  end 
    
  def role_of(user)
    self.band_memberships
      .where("member_id = ?", user.id)
      .try(:first).try(:role)
  end
  
  def find_membership(user) 
    BandMembership
      .where("member_id = ? AND band_id = ?", user.id, self.id)
      .first
  end
  
end
