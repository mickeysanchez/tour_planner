module VenuesHelper
  def geo_data(venue)
    shows = []
    
    marker_symbol = ''
    marker_size = 'medium'
    marker_color = '#070'
      
    { 
      type: 'Feature',
      geometry: {
        type: 'Point',
        coordinates: [venue.lon, venue.lat]
      },
      properties: {
        title: venue.name,
        description: "#{venue.events.count} upcoming shows",
        'marker-size' => marker_size,
        'marker-color' => marker_color,
        'marker-symbol' => marker_symbol
    }}.to_json.html_safe
  end
end