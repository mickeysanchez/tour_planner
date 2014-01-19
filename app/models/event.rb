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
#

class Event < ActiveRecord::Base
  attr_accessible :name
  
  belongs_to :band
end
