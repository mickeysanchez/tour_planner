module ToursHelper
  def geo_data(tour)
    shows = []
    
    tour.events.each do |event|
      marker_symbol = ''
      marker_size = 'medium'
      marker_color = '#070'
      
      if  event.date < Time.now
        marker_symbol = 'polling-place'
        marker_size = 'small'
        marker_color = '#6b2607'
      end
      
      shows << { 
        type: 'Feature',
        geometry: {
          type: 'Point',
          coordinates: [event.venue.lon, event.venue.lat]
        },
        properties: {
          title: "<a href='#{event_url(event)}'>" + (l event.date, format: "%d %B %Y") + "</a>".html_safe,
          description: (event.venue.name).html_safe,
          'marker-size' => marker_size,
          'marker-color' => marker_color,
          'marker-symbol' => marker_symbol
        }}
    end
    
    shows.to_json.html_safe
  end
end
