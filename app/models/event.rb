# == Schema Information
#
# Table name: events
#
#  id                  :integer          not null, primary key
#  name                :string(255)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  band_id             :integer
#  venue_id            :integer
#  date                :datetime
#  tour_id             :integer
#  poster_file_name    :string(255)
#  poster_content_type :string(255)
#  poster_file_size    :integer
#  poster_updated_at   :datetime
#  ticket_url          :string(255)      default("")
#

class Event < ActiveRecord::Base
  attr_accessible :name, :venue_id, :date, :poster, :band_id, :tour_id, :ticket_url
  
  validates :date, presence: true
  
  belongs_to :band
  belongs_to :venue, inverse_of: :events
  belongs_to :tour, inverse_of: :events
  
  has_attached_file :poster, 
  styles: { medium: "500x500#", thumb: "200x200#" }, 
  default_url: "venue_missing.png"
  validates_attachment_content_type :poster, content_type: /\Aimage\/.*\Z/
end
