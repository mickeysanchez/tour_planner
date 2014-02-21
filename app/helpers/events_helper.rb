module EventsHelper
  def grab_from_seat_geek?(band)
    band_name = band.name.downcase.split(" ").join("-")
    
    url = Addressable::URI.new(
      :scheme => "http",
      :host => "api.seatgeek.com",
      :path => "2/events",
      :query_values => {
        "type" => "concert",
        "venue.country" => "US",
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
        zipcode: v_data["postal_code"] 
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
  
end
