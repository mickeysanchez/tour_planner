module BandsHelper
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
end
