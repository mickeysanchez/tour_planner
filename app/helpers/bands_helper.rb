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
      true
    rescue
      false
    end
  end
  
  def notify_band_update(band, changes)
    notify_members(band.members, 
      subject: band, 
      differences: changes,
      notification_type: :update)      
  end
  
  def notify_band_image_grab(band)
    notify_admins(band.admins, 
      subject: band, 
      notification_type: :image_change)
  end
  
  def notify_band_destroy(band)
     notify_members(band.members, 
       subject: band, 
       notification_type: :destroy)
  end
end
