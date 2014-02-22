module EventsHelper
  def grab_from_seat_geek?(band)
    band_name = band.name.downcase.split(" ").join("-")
    
    url = Addressable::URI.new(
      :scheme => "http",
      :host => "api.seatgeek.com",
      :path => "2/events",
      :query_values => {
        "type" => "concert",
        # "venue.country" => "US",
        "performers.slug" => band_name,
        "per_page" => 100
      }
    ).to_s
    
    events = JSON.parse(RestClient.get(url))["events"]
    
    tour = Tour.create({
      name: band.name + " Tour (via SeatGeek)"
    })
    
    events.each do |show| 
      v_data = show["venue"]
  
      venue = Venue
      .find_or_create_by_name_and_address_and_city_and_state_and_zipcode({
        name: v_data["name"],
        address: v_data["address"],
        city: v_data["city"],
        state: v_data["state"],
        zipcode: v_data["postal_code"],
        lat: v_data["location"]["lat"],
        lon: v_data["location"]["lon"]  
      })
  
      next unless venue.valid?
  
      Event.find_or_create_by_date_and_band_id_and_venue_id({
        date: show["datetime_local"],
        band_id: band.id,
        venue_id: venue.id,
        tour_id: tour.id
      })
    end
    
    events.empty? ? false : true
  end
  
  def geo_data(event)
    shows = []
    
    marker_symbol = ''
    marker_size = 'medium'
    marker_color = '#070'
    
    if  event.date < Time.now
      marker_symbol = 'polling-place'
      marker_size = 'small'
      marker_color = '#6b2607'
    end
      
    { 
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
    }}.to_json.html_safe
  end
  
  def geo_data_events(events)
    shows = []
    
    i = 1
    events.each_with_index do |event, i|
      marker_symbol = ''
      marker_size = 'medium'
      marker_color = '#070'
      
      if  event.date < Time.now
        marker_symbol = 'polling-place'
        marker_size = 'small'
        marker_color = '#6b2607'
      elsif i < 10
        marker_symbol = i
        i += 1
      else
        marker_symbol = ''
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
