module EventsHelper
  include NotificationsHelper
  
  def new_or_existing_venue
    if params[:venue][:id].empty?   
      venue = Venue.new(params[:venue])
    else
      venue = Venue.find(params[:venue][:id])
    end
    venue
  end
  
  def conditional_tour(event)
    if params[:tour][:id].empty? && !params[:tour][:name].empty?
      tour = Tour.new(params[:tour])
    elsif !params[:tour][:id].empty?
      tour = Tour.find(params[:tour][:id])
    else
      tour = nil
    end
    
    if tour && tour.valid?
      event.tour = tour
    end
    
    tour
  end
  
  def grab_from_seat_geek?(band)
    url = seat_geek_band_url(band)
    events = JSON.parse(RestClient.get(url))["events"]
    
    tour = find_or_create_tour(band)    
    events.each do |show| 
      v_data = show["venue"]
      venue = find_or_create_venue(v_data)
      next unless venue.valid?
  
      event = find_or_create_event(show, band, venue, tour)      
    end
    
    events.empty? ? false : tour
  end
  
  def geo_data(event, options= {})
    defaults = {
      up_to_date: true,
      event_links: true,
      ticket_links: true
    }
    options = defaults.merge(options)
    
    ticket_link = ''
    marker_symbol = ''
    marker_size = 'medium'
    marker_color = '#070'
    event_link = l event.date, format: "%d %B %Y"
    
    if options[:up_to_date] && event.date < Time.now 
      marker_symbol = 'polling-place'
      marker_size = 'small'
      marker_color = '#6b2607'
    end
    
    if options[:ticket_links]
      ticket_link = "<p> <a href='#{event.ticket_url}'> Get Tickets </a> </p>"
    end
    
    if options[:event_links]
      event_link = "<a href='#{event_url(event)}'>" + 
                    (l event.date, format: "%d %B %Y") + 
                    "</a>".html_safe
    end
     
     
    geo_json(event, ticket_link, marker_symbol, marker_size, marker_color, event_link)  
  end
  
  def geo_data_events(events, options = {})
    shows = []
    
    events.each do |event|
      next unless event.venue.lat && event.venue.lon
      shows << geo_data(event, options)
    end
    
    shows.to_json.html_safe
  end
  
  def notify_event_create(event)
    notify_members(event.band.members,
      subject: event,
      notification_type: :create)
  end
  
  def notify_event_update(event, changes)
    notify_members(event.band.members,
      subject: event,
      notification_type: :update,
      differences: changes)
  end
  
  def notify_grab_shows(band)
    notify_members(band.members,
      subject: band,
      notification_type: :grab_shows)
  end
  
  def notify_event_destroy(event)
    notify_members(event.band.members,
      subject: event,
      notification_type: :destroy)
  end
  
  private
  
  def seat_geek_band_url(band)
    band_name = band.name.downcase.split(" ").join("-")
    
    Addressable::URI.new(
      :scheme => "http",
      :host => "api.seatgeek.com",
      :path => "2/events",
      :query_values => {
        "performers.slug" => band_name,
        "per_page" => 100
      }
    ).to_s
  end
  
  def find_or_create_venue(v_data)
    Venue.find_or_create_by_name_and_address_and_city_and_state_and_zipcode({
      name: v_data["name"],
      address: v_data["address"],
      city: v_data["city"],
      state: v_data["state"],
      zipcode: v_data["postal_code"],
      lat: v_data["location"]["lat"],
      lon: v_data["location"]["lon"]  
    })
  end
  
  def find_or_create_event(show, band, venue, tour)
    Event.find_or_create_by_date_and_band_id_and_venue_id_and_ticket_url({
      date: show["datetime_local"],
      ticket_url: show["url"],
      band_id: band.id,
      venue_id: venue.id,
      tour_id: tour.id,
    })
  end
  
  def find_or_create_tour(band)
    tour = Tour.find_or_create_by_name({
      name: band.name + " Tour (via SeatGeek)"
    })
    tour.active = true
    tour.save
    tour
  end
  
  def geo_json(event, ticket_link, marker_symbol, marker_size, marker_color, event_link)
    { 
      type: 'Feature',
      geometry: {
        type: 'Point',
        coordinates: [event.venue.lon, event.venue.lat]
      },
      properties: {
        title: event_link,
        description: (event.venue.name).html_safe + ticket_link.html_safe,
        'marker-size' => marker_size,
        'marker-color' => marker_color,
        'marker-symbol' => marker_symbol
      }
    }
  end
end
