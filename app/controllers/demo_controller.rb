class DemoController < ApplicationController
  layout 'demo/demo_layout'
  
  def one
    @requests = 0
    @user = User.new({
      email: "you@example.com", 
      password: "password",
    })
    
    @band = params[:choice]
    
    session[:demo] = @band
    @user.id = 0
    
    @current_user = @user
    
    flash[:demo_header] = "Welcome!"
    
    case params[:choice]
    when "Beyonce"
      story = "She asked you to be the tour manager for her upcoming European tour!"
    when "The Rolling Stones"
      story = "They want you to be the tour manager for their upcoming Australian tour!"
    when "Dr. Dog"
      story = "They need you to be the tour manager for their upcoming tour of the U.S!"
    when "One Direction"
      story = "They begged you to be the tour manager for their upcoming World Tour!"
    end
    
    flash[:demo] = 
    ["Congratulations! You were recently contacted by <strong>#{@band}</strong>! <br><br>
      (you can quit this demo at any time by clicking 'Log Out') ".html_safe,
     story,
     "You want to be on top of your game, so you signed up for <strong>Tour Planner</strong>.".html_safe,
     "The first thing you need to do is add <strong>#{@band}</strong> as one of your bands".html_safe,
     "<h2>Click on the <strong>'Add Band'</strong> button at the bottom of the page to continue.</h2>".html_safe]
     
    render 'demo/user_show'
  end
  
  def new_band
    @requests = 0
    flash[:demo_header] = 
    flash[:demo] = ["It's easy to create a new band.",
                    "We filled out the form for you.", 
                    "Just click <strong> Create Band </strong> to move on.".html_safe]
    @band = Band.new({name: session[:demo] })
  end
  
  def band_page
    @requests = 0
    @band = Band.new({name: session[:demo] })
    @band.id = 1
    @user = User.new({ email: "you@example.com "})
    @user.id = 0
    @current_user = @user
    @band.members = [@user]
    bm = BandMembership.new
    bm.member = @user
    @band.band_memberships = [bm]
    @events = []
    
    flash[:demo_header] = "Cool!"
    flash[:demo] = ["You created a band page!".html_safe,
                    "Let's spice it up a bit by adding a photo.",
                    "You can upload a photo on your own, but we make it super simple with the <strong> Grab Image </strong> button.".html_safe,
                    "If you've entered your band name correctly, it will go off into the internet and grab a photo (via Seat Geek).", "Try it out!"]
  end
  
  def band_image
    @requests = 0
    @band = Band.new({name: session[:demo] })
    @band.id = 1
    @user = User.new({ email: "you@example.com "})
    @user.id = 0
    @current_user = @user
    @band.members = [@user]
    bm = BandMembership.new
    bm.member = @user
    @band.band_memberships = [bm]
    @events = []
    
    flash[:demo_header] = "Cool!"
    flash[:demo] = ["Bam! There it is!",
                    "The eyes of #{session[:demo]} will keep you focused.",
                    "You can enter in shows yourself, or you can use some more <br> behind the scenes magic to grab existing event data.",
                    "Click on the <strong>Grab Shows From Seat Geek</strong> button to populate <br> your page with all the 
                    current #{session[:demo]} events.".html_safe]
    
    @image = session[:demo].downcase.split(" ").join("") + ".jpg"
  end
  
  def shows_grabbed
    @requests = 1
    @band = Band.new({name: session[:demo] })
    @band.id = 1
    @user = User.new({ email: "you@example.com "})
    @user.id = 0
    @current_user = @user
    @band.members = [@user]
    bm = BandMembership.new
    bm.member = @user
    @band.band_memberships = [bm]
    
    @image = session[:demo].downcase.split(" ").join("") + ".jpg"
    file = session[:demo].downcase.split(" ").join("") + ".json"
    
    file_json = File.read("db/demo_bands_json/" + file)
    events = JSON.parse(file_json)["events"]
    
    @tour = Tour.new({
      name: session[:demo] + " Tour (via SeatGeek)"
    })
    
    
    @events = []
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
      venue.id = i
  
      next unless venue.valid?
  
      event = Event.new({
        date: show["datetime_local"],
        ticket_url: show["url"],
        band_id: @band.id,
        venue_id: venue.id,
        tour_id: @tour.id
      })
      
      @events << event
      
      event.venue = venue  
    end
    
    @tour = Tour.new({name: session[:demo] + " Tour"})
    @tour.id = 0
    @tours = [@tour]
    
    
    flash[:demo_header] = "Bam! There they are!"
    flash[:demo] = ["Using the <strong> Grab Shows </strong> button automatically creates a tour <br> containing all the
                     shows that were grabbed.".html_safe,
                    "Before we look at the tour, it looks like you have a notification! What could it be?",
                    "Click on the 'Notifications' up above to take a look.".html_safe]
  end
  
  
  def notifications
    @requests = 1
    @pending_requests = [1]
    @email = "BigShotAgent@AgentsRUs.com"
    @band = session[:demo]
    
    
    flash[:demo] = ["You received a member request! Someone wants to join <strong> #{session[:demo]} </strong>.".html_safe,
                    "Members of a band will receive notifications <br> when shows and tours are added, updated, or
                     deleted.".html_safe,
                    "Looks like you got a request from <strong> #{session[:demo]}'s </strong> agent.",
                    "She wants to stay up to date.",
                    "Click <strong> Accept </strong> to add this band member."]
  end
  
  def admins
    @requests = 0
    
    @band = Band.new({name: session[:demo] })
    @band.id = 1
    @user = User.new({ email: "you@example.com "})
    @agent = User.new({ email: "BigShotAgent@AgentsRUs.com"})
    @agent.id = 1
    @user.id = 0
    @current_user = @user
    @band.members = [@user, @agent]
    bm = BandMembership.new
    bm.admin = true
    bm.member = @user
    bm2 = BandMembership.new
    bm2.admin = false
    bm2.member = @agent
    @band.band_memberships = [bm,bm2]
    
    @image = session[:demo].downcase.split(" ").join("") + ".jpg"
    file = session[:demo].downcase.split(" ").join("") + ".json"
    
    file_json = File.read("db/demo_bands_json/" + file)
    events = JSON.parse(file_json)["events"]
    
    @tour = Tour.new({
      name: session[:demo] + " Tour (via SeatGeek)"
    })
    
    
    @events = []
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
      venue.id = i
  
      next unless venue.valid?
  
      event = Event.new({
        date: show["datetime_local"],
        ticket_url: show["url"],
        band_id: @band.id,
        venue_id: venue.id,
        tour_id: @tour.id
      })
      
      @events << event
      
      event.venue = venue  
    end
    
    @tour = Tour.new({name: session[:demo] + " Tour"})
    @tour.id = 0
    @tours = [@tour]
    
    flash[:demo] = ["Once you accept a new member, you have the option of making them an admin.",
                    "Admins are allowed to create, edit, and delete a band's shows and tours.",
                    "Since you created this band, you were made an admin by default.",
                    "Admins receive notifications when band details are editted.",
                    "Let's hold off on making <strong> #{session[:demo]}'s </strong> agent an admin for now.",
                    "Instead, let's take a look at the coolest part of <strong> Tour Planner </strong>... the tours!",
                    "Click on <strong> #{session[:demo]}'s </strong> tour to check it out."]
  end
  
  
  include ToursHelper
  def band_tour
    @requests = 0
    @band = Band.new({name: session[:demo] })
    @band.id = 1
    
    file = session[:demo].downcase.split(" ").join("") + ".json"
    file_json = File.read("db/demo_bands_json/" + file)
    events = JSON.parse(file_json)["events"]
    
    @tour = Tour.new({
      name: session[:demo] + " Tour"
    })
     
    @events = []
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
      venue.id = i
  
      next unless venue.valid?
  
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
    
    @tour.events = @events
    
    @geo_data = geo_data_tour(@tour, false, false, true)
    
    case session[:demo]
    when "Beyonce"
      @distance = 1297
      quote = "<strong>\"Power's not given to you. You have to take it.\" </strong> ~ Beyonce"
    when "The Rolling Stones"
      @distance =  540
      quote = "<strong>\"Lose your dreams and you will lose your mind. Ain't life unkind?\" </strong> ~ The Rolling Stones"
    when "Dr. Dog"
      @distance = 5582
      quote = "<strong><p>\"Do you like things the way they seem?</p> <p>Or are you looking behind the scenes?\" </strong> ~ Dr. Dog</p>"
    when "One Direction"
      @distance = 10623
      quote = "<strong><p>\"I will carry you over fire and water for your love. </p><p> And I will hold you closer, hope your heart is strong enough.\" </strong> ~ One Direction</p>"
    end
    
    flash[:demo_header] = "Visualized!"
    flash[:demo] = ["<strong> Tour Planner </strong> auto-generates a 
                     map from all the shows within a given tour.".html_safe,
                     "<strong> Tour Planner </strong> also provides embeddable code <br>
                      so you can include this map on your band's website.".html_safe,
                      "If you update
                      this tour on <strong> Tour Planner </strong>, the changes <br> will be reflected on your
                      website's embedded map!".html_safe,
                    "That's all for now. Click <a href='#{root_url}'> here </a> to sign up -or-
                      click 
                      
                      <form action='#{login_url}' method='post' style='display:inline-block'>
                        <input type='hidden' 
                      		 name='authenticity_token' 
                      		 value='<%= form_authenticity_token %>'>
  
                       <input type='hidden' name='user[email]' value='demo-user@tourplanner.co'>
                       <input type='hidden' name='user[password]' value='password'>

                        <div class='submit'>	 
                        	   <input type='submit' value='here'>
                        </div>
                      </form>
                      
                      to sign in as a demo user!
                      <br><br> #{quote} ".html_safe]
  end
end
