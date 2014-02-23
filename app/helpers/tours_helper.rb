module ToursHelper
  def geo_data(tour, up_to_date = true, event_links = true)
    shows = []
    
    tour.events.each do |event|
      marker_symbol = ''
      marker_size = 'medium'
      marker_color = '#070'
      
      if  event.date < Time.now && up_to_date
        marker_symbol = 'polling-place'
        marker_size = 'small'
        marker_color = '#6b2607'
      end
      
      if event_links
        event_link = "<a href='#{event_url(event)}'>" + (l event.date, format: "%d %B %Y") + "</a>".html_safe
      else
        event_link = l event.date, format: "%d %B %Y"
      end
      
      shows << { 
        type: 'Feature',
        geometry: {
          type: 'Point',
          coordinates: [event.venue.lon, event.venue.lat]
        },
        properties: {
          title: event_link,
          description: (event.venue.name).html_safe,
          'marker-size' => marker_size,
          'marker-color' => marker_color,
          'marker-symbol' => marker_symbol
        }}
    end
    
    shows.to_json.html_safe
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
