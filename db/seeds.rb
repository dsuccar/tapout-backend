# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client'

require 'uri'
require 'net/http'
require 'openssl'



# byebug
# puts 

Brewery.delete_all
User.delete_all
# Favorite.delete_all
Review.delete_all

# b1= Brewery.create(name:"7 Locks", address:"Maryland")
# b2= Brewery.create(name:"True Respite", address:"Maryland")
# b3= Brewery.create(name:"3 Star", address:"DC")

u1= User.create(username: "Danny")
u2= User.create(username: "Kanye")

# f1= Favorite.create(user_id: u1.id, brewery_id: b1.id)
# f2= Favorite.create(user_id: u1.id, brewery_id: b2.id)

# r1 = Review.create(text: "they let us hang after closing", user_id: u2.id, brewery_id:b2.id)

brewery_key = ENV['0f976ce8camsh4949bd9b3e0e6fdp134289jsn80ae941f8527']

url = URI("https://brianiswu-open-brewery-db-v1.p.rapidapi.com/breweries?by_state=Maryland")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(url)
request["x-rapidapi-host"] = 'brianiswu-open-brewery-db-v1.p.rapidapi.com'
request["x-rapidapi-key"] = '0f976ce8camsh4949bd9b3e0e6fdp134289jsn80ae941f8527'

response = http.request(request)
rappers = response.read_body
result = JSON.parse(rappers)

breweries = result.each do |brew|

  Brewery.create(name:brew['name'], 
          type: brew["brewpub"], 
          street: brew["street"], 
          city: brew["city"], 
          longitude: brew["longitude"], 
          latitude: brew["latitude"], 
          phone: brew["phone"],
          url: brew["website_url"])
          

end

# result = RestClient.get "https://brianiswu-open-brewery-db-v1.p.rapidapi.com/?rapidapi-key=#{brewery_key}"
# result = JSON.parse(result)["brewery"]



