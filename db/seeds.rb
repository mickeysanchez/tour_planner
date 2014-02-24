# # VENUES
# venues_json = File.read("db/seed_venues.json")
# venues = JSON.parse(venues_json)["venues"]
# 
# venues.each do |venue|
#   Venue.create({
#     name: venue["name"],
#     address: venue["address"],
#     city: venue["city"],
#     state: venue["state"],
#     zipcode: venue["postal_code"]
#   })
# end


# LOW-PROFILE USERS
mickey = User.create({ email: "sanchez.mickey@gmail.com", password: "password" })
mickey_band = mickey.bands.create({ name: "The Smoochies" })
mickey_band.make_admin!(mickey)

# HIGH-PROFILE USERS
# PROPS TO SEAT GEEK API

dir = "db/seed_users"
seed_user_files = Dir.foreach(dir) \
           .map { |x| File.expand_path("#{dir}/#{x}") } \
           .select { |x| File.file?(x) }

seed_user_files.each do |file|
  file_json = File.read(file)
  event_data = JSON.parse(file_json)["events"]
  
  user = User.create({
    email: event_data.first["performers"]
    .first["name"].split(" ")
    .join("").downcase + "@tourplanner.com",
    password: "password",
    image: open(event_data.first["performers"].first["images"]["huge"])    
  })

  band = user.bands.create({
    name: event_data.first["performers"].first["name"],
    image: open(event_data.first["performers"].first["images"]["huge"])  
  })
  
  band.make_admin!(user)
  
  tour = Tour.create({ 
    name: event_data.first["performers"].first["name"] + " Tour" 
  })

  event_data.each do |show| 
    v_data = show["venue"]
  
    venue = Venue.
    find_or_create_by_name_and_address_and_city_and_state_and_zipcode_and_lat_and_lon({
      name: v_data["name"],
      address: v_data["address"],
      city: v_data["city"],
      state: v_data["state"],
      zipcode: v_data["postal_code"],
      lat: v_data["location"]["lat"],
      lon: v_data["location"]["lon"] 
    })
  
    next unless venue.valid?
  
    band.events.create({
      date: show["datetime_local"],
      ticket_url: show["url"],
      venue_id: venue.id,
      tour_id: tour.id
    })
  end
end


