require 'addressable/uri'

module BandsHelper
  include NotificationsHelper
  
  def grab_image_from_seat_geek?(band)
    band_name = band.name.downcase.split(" ").join("-")
    
    url = Addressable::URI.new(
      :scheme => "http",
      :host => "api.seatgeek.com",
      :path => "2/performers",
      :query_values => {
        "q" => band_name
      }
    ).to_s
    
    performers = JSON.parse(RestClient.get(url))["performers"]
    
    begin 
      # try every sized image before giving up
      band.image = open(performers.first["image"]) || 
      open(performers.first["images"]["huge"]) ||
      open(performers.first["images"]["large"]) ||
      open(performers.first["images"]["medium"]) ||
      open(performers.first["images"]["small"])
      band.save!
    rescue
      performers = []
    end
    
    performers.empty? ? false : true
  end
  
  def record_changes(band)
    changes = ""
    
    if @band.name_changed?
      changes << 
      "<li> Name changed from #{@band.name_was} to 
      <a href='#{band_url(@band)}'> #{@band.name}.</a></li>"  
    end
    
    if @band.image_file_name_changed?
      changes << 
      "<li> <a href='#{band_url(@band)}'> 
      #{@band.name} image changed. </a></li>"   
    end
    
    changes
  end
  
  def notify_band_update(band, changes)
      message = "<a href='#{user_url(current_user)}'> 
                #{current_user.email} </a> 
                made changes to your band:  
                <ul> #{changes} </ul>"
                
      notify_members(band, message)      
  end
  
  def notify_band_image_grab(band)
      message = "<a href='#{band_url(band)}'> #{band.name} image changed. </a>"
      notify_admins(band, message)
  end
  
  def notify_band_destroy(band)
     message = "Your band, #{band.name} was deleted"
     notify_members(band, message)
  end
end
