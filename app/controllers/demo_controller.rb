class DemoController < ApplicationController
  layout 'demo/demo_layout'
  
  def one
    @user = User.new({
      email: "you@example.com", 
      password: "password",
    })
    
    @band = params[:choice]
    
    session[:demo] = @band
    @user.token = "one"
    @user.id = 0
    
    @current_user = @user
    
    flash[:demo_header] = "Welcome!"
    
    case params[:choice]
    when "Beyonce"
      story = "She asked you to be the tour manager for her upcoming European tour."
    when "The Rolling Stones"
      story = "They wanted you to be the tour manager for their upcoming Australian tour."
    when "Dr. Dog"
      story = "They needed you to be the tour manager for their upcoming tour of the U.S."
    when "One Direction"
      story = "They begged you to be the tour manager for their upcoming World Tour."
    end
    
    flash[:demo] = 
    ["Congratulations! You were recently contacted by <strong>#{@band}</strong>.".html_safe,
     story,
     "You want to be on top of your game, so you signed up for <strong>Tour Planner</strong>.".html_safe,
     "<h2>Click on the <strong>'Add Band'</strong> button at the bottom of the page to continue.</h2>".html_safe,
     "(Click <strong>Log Out</strong> at any time to quit this guided tour.)".html_safe]
     
    render 'demo/user_show'
  end
  
  def new_band
    flash[:demo_header] = "Ok!"
    flash[:demo] = ["It's easy to create a new band.", "It's even easier when we fill out the form out for you.", "Click <strong> Create Band </strong> to move on.".html_safe]
    @band = Band.new({name: session[:demo] })
  end
  
  def band_page
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
    flash[:demo] = ["Here's your band's page.".html_safe,
                    "Let's spice it up a bit by adding a photo.",
                    "The eyes of #{session[:demo]} will keep you focused.",
                    "You can upload a photo on your own, but we make it super simple with the <strong> Grab Image </strong> button.".html_safe,
                    "If you've entered your band name correctly, it will go off into the internet and grab a photo (via Seat Geek).", "Try it out!"]
  end
  
  def band_image
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
    flash[:demo] = ["Looking good.",
                    "You can enter in shows yourself, or you can use some more behind the scenes magic to grab event
                     data with Seat Geek.",
                    "Click on the <strong>Grab Shows From Seat Geek</strong> button to populate your page with all the 
                    current #{session[:demo]} events.".html_safe]
    
    @image = session[:demo].downcase.split(" ").join("") + ".jpg"
  end
end
