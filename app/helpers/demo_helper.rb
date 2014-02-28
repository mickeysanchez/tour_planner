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
end

