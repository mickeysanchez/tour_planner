module DemoHelper
  def demo_setup
    @band = Band.new({name: session[:demo_band] })
    @band.id = 1
    @requests = 0
    @user = User.new({
      email: "you@example.com", 
      password: "password",
    })  
    @user.id = 0
    @current_user = @user
    session[:token] = "demo"
    @band.members = [@user]
    bm = BandMembership.new
    bm.member = @user
    @band.band_memberships = [bm]
    @events = []
    @image = session[:demo_band].downcase.split(" ").join("") + ".jpg"
    @pending_requests = [1]
    @email = "BigShotAgent@AgentsRUs.com"
  end
  
  def demo_events_setup
    file = session[:demo_band].downcase.split(" ").join("") + ".json"
    file_json = File.read("db/demo_bands_json/" + file)
    events = JSON.parse(file_json)["events"]
    
    @tour = Tour.new({name: session[:demo_band] + " Tour"})
    @tour.id = 0
    
    @events = []
    venues = []
    
    events.each_with_index do |show, i|
      next if @events.count > 15
      
      v_data = show["venue"]
      
      venue = Venue
      .new({
        name: v_data["name"],
        address: v_data["address"],
        city: v_data["city"],
        state: v_data["state"],
        zipcode: v_data["postal_code"],
        lat: v_data["location"]["lat"],
        lon: v_data["location"]["lon"]  
      })
      
      next if venues.index { |v| v.name == venue.name }
      
      venue.id = i
  
      next unless venue.valid?
      venues << venue
  
      event = Event.new({
        date: show["datetime_local"],
        ticket_url: show["url"],
        band_id: @band.id,
        venue_id: venue.id,
        tour_id: @tour.id
      })
      
      event.id = i
      
      @events << event
      
      event.venue = venue  
    end
  
    @tours = [@tour]
    @tour.events = @events
    
    cookies[:demo_tour] = nil
    cookies[:demo_tour] = @events.to_json(only: [:id, :date, :ticket_url])
    cookies[:demo_venues] = nil
    cookies[:demo_venues] = venues.to_json(only: [:id, :lat, :lon, :name])
    params[:band_id] = 0
  end 
  
  def demo_new_member_setup
    @agent = User.new({ email: "BigShotAgent@AgentsRUs.com"})
    @agent.id = 1
    @band.members = [@user, @agent]
    bm = BandMembership.new
    bm.admin = true
    bm.member = @user
    bm2 = BandMembership.new
    bm2.admin = false
    bm2.member = @agent
    @band.band_memberships = [bm,bm2]
  end
  
  def demo_xhr
    
    events = JSON.parse(cookies[:demo_tour])
    venues = JSON.parse(cookies[:demo_venues])
    
    event_objects = []
    venue_objects = []
    
    events.each_with_index do |event, i|
      event_obj = Event.new
      event_obj.id = event["id"]
      event_obj.date = event["date"]
      event_obj.ticket_url = event["ticket_url"]
      
      venue_obj2 = Venue.new
      venue_obj2.id = venues[i]["id"]
      venue_obj2.lat = venues[i]["lat"]
      venue_obj2.lon = venues[i]["lon"]
      venue_obj2.name = venues[i]["name"]
      
      event_obj.venue = venue_obj2
      event_objects << event_obj
      venue_objects << venue_obj2
    end
    
    event_objects.delete_if { |event| event.id.to_i == params["event_id"].to_i}
    
    cookies[:demo_tour] = nil
    cookies[:demo_tour] = event_objects.to_json(only: [:id, :date, :ticket_url])
    cookies[:demo_venues] = nil
    cookies[:demo_venues] = venue_objects.to_json(only: [:id, :lat, :lon, :name])
    
    render partial: 'tours/map', 
           locals: { geo_data: geo_data_events(event_objects, 
                     up_to_date: false, 
                     event_links: false, 
                     ticket_links: true) }, 
           layout: false
  end
end

