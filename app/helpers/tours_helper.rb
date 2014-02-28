module ToursHelper
  include EventsHelper
  
  def geo_data_tour(tour, options = {})
    geo_data_events(tour.events, options)
  end
  
  def get_distance(tour)
      events = tour.events
      origin = events[0]
      origin = origin.venue.lat.to_s + "," + origin.venue.lon.to_s
      destination = events.last
      destination = destination.venue.lat.to_s + "," + destination.venue.lon.to_s
      second_to_last = (events.length > 10) ? 8 : events.length-2
      waypoints = events[1..second_to_last].map { |event| event.venue.lat.to_s + "," + event.venue.lon.to_s }.join("|")
     
      url = Addressable::URI.new(
        :scheme => "https",
        :host => "maps.googleapis.com",
        :path => "maps/api/directions/json",
        :query_values => {
          "origins" => origin,
          "destinations" => destination,
          "waypoints" => waypoints,
          "sensor" => false,
          # "key" => ENV["GOOGLE_KEY"],
          "units" => "imperial" 
        }
      ).to_s
    
      
      legs = JSON.parse(RestClient.get(url))["routes"].first["legs"]
    
      distance = 0
      legs.each do |leg|
        distance += leg["distance"]["text"][0..-4].split(",").join("").to_i unless leg["distance"]["text"][-2..-1] == "ft"
      end
    
      if events.length > 10
        "more than #{distance} miles."
      else
        "#{distance} miles"
      end
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
