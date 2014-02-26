require 'addressable/uri'

module EventsHelper
  include NotificationsHelper
  
  def record_changes(event)
    changes = ""
    if event.date_changed?
      changes << "<li> Date changed from #{l event.date_was, format: "%d %B %Y" } to 
                 #{l event.date, format: "%d %B %Y" } </li>"  
    end
    
    if event.venue_id_changed?
      changes << "<li> Venue was changed to <a href='#{venue_url(event.venue)}'>  #{event.venue.name} </a> </li>"   
    end
    
    changes
  end
  
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
    band_name = band.name.downcase.split(" ").join("-")
    
    url = Addressable::URI.new(
      :scheme => "http",
      :host => "api.seatgeek.com",
      :path => "2/events",
      :query_values => {
        # "type" => "concert",
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
  
      Event.find_or_create_by_date_and_band_id_and_venue_id_and_ticket_url({
        date: show["datetime_local"],
        ticket_url: show["url"],
        band_id: band.id,
        venue_id: venue.id,
        tour_id: tour.id
      })
    end
    
    events.empty? ? false : true
  end
  
  def geo_data(event, up_to_date = true, event_links = true, ticket_links = true)
    shows = []
    
    marker_symbol = ''
    marker_size = 'medium'
    marker_color = '#070'
    
    if  event.date < Time.now && up_to_date
      marker_symbol = 'polling-place'
      marker_size = 'small'
      marker_color = '#6b2607'
    end
    
    if ticket_links
      ticket_link = "<p> <a href='#{event.ticket_url}'> Get Tickets </a> </p>"
    else
      ticket_link = ""
    end
    
    if event_links
      event_link = "<a href='#{event_url(event)}'>" + (l event.date, format: "%d %B %Y") + "</a>".html_safe
    else
      event_link = l event.date, format: "%d %B %Y"
    end
      
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
    }}
  end
  
  def geo_data_events(events, up_to_date = true, event_links = true, ticket_links = true)
    shows = []
    
    events.each do |event|
      next unless event.venue.lat && event.venue.lon
      shows << geo_data(event, up_to_date, event_links, ticket_links)
    end
    
    shows.to_json.html_safe
  end
  
  def notify_event_create(event)
    notify_members(event.band.members,
      subject: event,
      notification_type: :create)
  end
  
  def notify_event_update(event, changes)
     message = "Your band #{event.band.name}'s event on 
                  <a href='#{event_url(event)}'> 
                  #{l event.date, format: "%d %B %Y" }</a>
                  has been updated.
                  <ul> #{changes} </ul>"
                  
     notify_members(event.band, message)
  end
  
  def notify_grab_shows(band)
     message = "Shows grabbed for your band 
              <a href='#{band_url(band)}'> #{band.name} </a>."
              
     notify_members(band, message)
  end
  
  def notify_event_destroy(event)

  
    notify_members(event.band, message) 
  end
end
