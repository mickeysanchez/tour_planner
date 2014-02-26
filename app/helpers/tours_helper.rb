require 'addressable/uri'

module ToursHelper
  include EventsHelper
  
  def geo_data_tour(tour, up_to_date = true, event_links = true, ticket_links = true)
    geo_data_events(tour.events, up_to_date, event_links, ticket_links)
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
end
