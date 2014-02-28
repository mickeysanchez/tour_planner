class DemoController < ApplicationController
  layout 'demo/demo_layout'
  include ToursHelper
  include DemoHelper  
    
  def one
    session[:demo_band] = params[:choice]
    demo_setup
    
    case session[:demo_band]
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
    ["Congratulations! You were recently contacted by <strong>#{@band.name}</strong>! <br><br>
      (you can quit this demo at any time by clicking 'Log Out') ".html_safe,
     story,
     "You want to be on top of your game, so you signed up for <strong>Tour Planner</strong>.".html_safe,
     "The first thing you need to do is add <strong>#{@band.name}</strong> as one of your bands".html_safe,
     "<h2>Click on the <strong>'Add Band'</strong> button at the bottom of the page to continue.</h2>".html_safe]
     
    render 'demo/user_show'
  end
  
  def new_band
    demo_setup
    
    flash[:demo] = 
    ["You can add and manage as many bands as you want.", 
     "It's easy to add a new band. <br>
      We filled out the form for you.", 
     "Just click <strong> Create Band </strong> to move on.".html_safe]
  end
  
  def band_page
    demo_setup
    
    flash[:demo] = 
    ["You created a band page!".html_safe,
      "Let's spice it up a bit by adding a photo.",
      "You can upload a photo on your own, but we make it super simple <br>
      with the <strong> Grab Image </strong> button.".html_safe,
      "If you've entered your band name correctly, it will go off into <br>
      the internet and grab a photo (via Seat Geek).", 
      "Try it out! (Click the 'Grab Image' button to continue.)".html_safe]
  end
  
  def band_image
    demo_setup
    
    flash[:demo] = 
    ["Bam! There it is!",
      "The eyes of #{session[:demo_band]} will keep you focused.",
      "You can enter in shows yourself, or you can use some 
      <br> behind the scenes magic to grab existing event data.",
      "Click on the <strong>Grab Shows From Seat Geek</strong> 
      button to populate <br> your page with all the 
      current #{session[:demo_band]} events.".html_safe]
  end
  
  def shows_grabbed
    demo_setup  
    demo_events_setup
    @requests = 1
  
    flash[:demo] = 
    ["Using the <strong> Grab Shows </strong> button automatically creates a tour <br> 
      containing all the shows that were grabbed.".html_safe,
     "Before we look at the tour, it looks like you have a notification! What could it be?",
     "Click on the 'Notifications' up above to take a look.".html_safe]
  end
  
  
  def notifications
    demo_setup
    @requests = 1    
    
    flash[:demo] = 
    ["You received a member request! Someone wants to join <strong> #{@band.name} </strong>.".html_safe,
    "Members of a band will receive notifications <br> when shows and tours are added, updated, or
     deleted.".html_safe,
    "Members are also alerted when someone joins or (gasp!) leaves the band.",
    "Looks like you got a request from <strong> #{@band.name}'s </strong> agent.",
    "She wants to stay up to date.",
    "Click <strong> Accept </strong> to add this band member."]
  end
  
  def admins
    demo_setup
    demo_new_member_setup    
    demo_events_setup
    
    flash[:demo] = 
    ["Once you accept a new member, you have the option of making them an admin.",
    "Admins are allowed to create, edit, and delete a band's shows and tours.",
    "Admins receive notifications when band details are editted.",
    "Since you created this band, you were made an admin by default.",
    "Let's hold off on making <strong> #{session[:demo_band]}'s </strong> agent an admin for now.",
    "Instead, let's take a look at the coolest part of <strong> Tour Planner </strong>... the tours!",
    "Click on <strong> #{session[:demo_band]}'s </strong> tour to check it out."]
  end
  
  def band_tour
    demo_setup
    demo_events_setup
    @geo_data = geo_data_tour(@tour, up_to_date: false, event_links: false, ticket_links: true)
    
    case @band.name
    when "Beyonce"
      @distance = 1297
      quote = "<strong>\"Power's not given to you. You have to take it.\" </strong> ~ Beyonce"
    when "The Rolling Stones"
      @distance =  540
      quote = "<br><strong>\"Lose your dreams and you will lose your mind.<br> 
               Ain't life unkind?\" </strong> ~ The Rolling Stones"
    when "Dr. Dog"
      @distance = 5582
      quote = "<strong><p>\"Do you like things the way they seem? <br> 
               Or are you looking behind the scenes?\" </strong> ~ Dr. Dog</p>"
    when "One Direction"
      @distance = 10623
      quote = "<strong><p>\"I will carry you over fire and water for your love. I will hold <br> 
               you closer, hope your heart is strong enough.\" </strong> ~ One Direction</p>"
    end
    
    flash[:demo] = 
    ["<strong> Tour Planner </strong> auto-generates a 
     map from all the shows within a given tour.".html_safe,
     "There are ticket links to the events embedded in each marker.",
     "<strong> Tour Planner </strong> also provides embeddable code <br>
      so you can include this map on your band's website.".html_safe,
      "If you update
      this tour on <strong> Tour Planner </strong>, the changes <br> will be reflected on your
      website's embedded map!".html_safe,
      "Feel free to look around.",
      "That's all for now. Click <a href='#{root_url}' class='target'> here </a> to sign up -or-
      click 
      
      <form action='#{login_url}' method='post' style='display:inline-block'>
        <input type='hidden' 
      		 name='authenticity_token' 
      		 value='<%= form_authenticity_token %>'>

       <input type='hidden' name='user[email]' value='demo-user@tourplanner.co'>
       <input type='hidden' name='user[password]' value='password'>

        <div class='submit'>	 
        	   <input type='submit' value='here' class='target'>
        </div>
      </form>
      
      to sign in as a demo user!
      <br> #{quote} ".html_safe]
  end
end
