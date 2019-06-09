require 'json'

puts 'testing - this is the google API result testing'
filepath = './app/assets/files/google_route_result.json'
travelfile = File.read(filepath)

travel_test = JSON.parse(travelfile )

# total journey time
puts travel_test["routes"][0]["legs"][0]["duration"]["text"]
