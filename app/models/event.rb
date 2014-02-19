# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  band_id    :integer
#  venue_id   :integer
#  date       :datetime
#  tour_id    :integer
#

class Event < ActiveRecord::Base
  attr_accessible :name, :venue_id, :date, :poster
  
  validates :date, presence: true
  
  belongs_to :band
  belongs_to :venue, inverse_of: :events
  belongs_to :tour, inverse_of: :events
  
  has_attached_file :poster, 
  styles: { medium: "500x500#", thumb: "200x200#" }, 
  default_url: "venue_missing.png"
  validates_attachment_content_type :poster, content_type: /\Aimage\/.*\Z/
end
