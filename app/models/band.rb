# == Schema Information
#
# Table name: bands
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Band < ActiveRecord::Base
  attr_accessible :name
  
  validates :name, presence: true

  # make it easy on myself: call band.events or band.shows interchangeably
  has_many :events, :order => 'date ASC'
  has_many :shows, 
           :class_name => 'Event', 
           :foreign_key => :band_id, 
           :order => 'date ASC' 
           
  has_many :tours, through: :events, source: :tour, uniq: true
           
  has_many :band_memberships, dependent: :destroy
  has_many :members,
    through: :band_memberships,
    source: :member
    
  def role_of(user)
    self.band_memberships
      .where("member_id = ?", user.id)
      .try(:first).try(:role)
  end
end
