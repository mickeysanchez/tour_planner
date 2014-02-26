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
    message = "A <a href='#{tour_url(tour)}'> tour </a> was added
               to your band: <a href='#{band_url(tour.band)}'> 
               #{@tour.band.name}. </a>"
    notify_members(tour.band, message)
  end
  
  def notify_tour_update(tour)
    message = "Your band <a href='#{tour_url(@tour)}'> 
               #{@tour.band.name}'s tour </a> was edited"
    notify_members(tour.band, message)
  end
  
  def notify_tour_destroy(tour)
    message = "Your band #{@tour.band.name}'s tour: #{@tour.name}, was deleted."
    notify_members(tour.band, message)
  end
end
