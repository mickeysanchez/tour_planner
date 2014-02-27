# == Schema Information
#
# Table name: tours
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  active     :boolean          default(TRUE)
#

class Tour < ActiveRecord::Base
  default_scope where(active: true)
  
  attr_accessible :name, :event_ids, :band_id
  
  validates :name, presence: true
  
  has_many :events, inverse_of: :tour
  
  has_many :notifications, as: :notifiable
  
  def band
    Band.joins(:events)
        .joins(:tours)
        .where("tours.id = ?", self.id)
        .first
  end
  
  def admin_user?(user)
    !BandMembership.where(
      "admin = true AND member_id = ? AND band_id = ?",
       user.id, self.band).empty?
  end
end
