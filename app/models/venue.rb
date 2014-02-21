# == Schema Information
#
# Table name: venues
#
#  id                 :integer          not null, primary key
#  name               :string(255)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  address            :string(255)
#  city               :string(255)
#  state              :string(255)
#  zipcode            :string(255)
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#

require 'addressable/uri'

class Venue < ActiveRecord::Base
  attr_accessible :name, :address, :city, :state, :zipcode, :lat, :lon
  
  validates :name, :address, :city, :state, presence: true
  
  has_many :events, order: "date ASC", inverse_of: :venue
  
  def grab_coordinates
    key = ENV["GOOGLE_KEY"]
    
    address = self.address.split(" ").join("+")
    city = self.city.split(" ").join("+")
    
    url = Addressable::URI.new(
      :scheme => "https",
      :host => "maps.googleapis.com",
      :path => "maps/api/geocode/json",
      :query_values => {
        address: "#{address},+#{city},+#{self.state}+#{self.zipcode}",
        sensor: false,
        key: key
      }
    ).to_s
    
    location_data = JSON.parse(RestClient.get(url))
    
    self.lat = location_data["results"].first["geometry"]["location"]["lat"]
    self.lon = location_data["results"].first["geometry"]["location"]["lng"]
  end
end
