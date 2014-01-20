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

  # make it easy on ourselves: call band.events or band.shows interchangeably
  has_many :events, :order => 'date ASC'
  has_many :shows, 
           :class_name => 'Event', 
           :foreign_key => :band_id, 
           :order => 'date ASC' 
end
