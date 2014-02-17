# == Schema Information
#
# Table name: venues
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  address    :string(255)
#  city       :string(255)
#  state      :string(255)
#  zipcode    :string(255)
#

class Venue < ActiveRecord::Base
  attr_accessible :name, :address, :city, :state, :zipcode
  
  validates :name, :address, :city, :state, :zipcode, presence: true
  
  has_many :events, order: "date ASC"
end
