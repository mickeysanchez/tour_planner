require 'addressable/uri'

module ToursHelper
  include EventsHelper
  
  def geo_data_tour(tour, options = {})
    geo_data_events(tour.events, options)
  end
  
  def get_distance(tour)
    distance = 0
    
    tour.events.each_with_index do |event, i|
      next unless tour.events[i+1]
      origin = "#{event.venue.lat},#{event.venue.lon}"
      destination = "#{tour.events[i+1].venue.lat},#{tour.events[i+1].venue.lon}"
     
      url = Addressable::URI.new(
        :scheme => "https",
        :host => "maps.googleapis.com",
        :path => "maps/api/distancematrix/json",
        :query_values => {
          "origins" => origin,
          "destinations" => destination,
          "sensor" => false,
          # "key" => ENV["GOOGLE_KEY"],
          "units" => "imperial" 
        }
      ).to_s
    
      if data = JSON.parse(RestClient.get(url))["rows"].first["elements"].first["distance"]
        distance += data["text"].to_i
      end
    end
    
    distance
  end
  
  def notify_tour_create(tour)
    notify_members(tour.band.members,
      subject: tour,
      notification_type: :create)
  end
  
  def notify_tour_update(tour)
    notify_members(tour.band.members,
      subject: tour,
      notification_type: :update)
  end
  
  def notify_tour_destroy(tour)
    notify_members(tour.band.members,
      subject: tour,
      notification_type: :destroy)
  end
end
