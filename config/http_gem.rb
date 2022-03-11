require "http"
require "awesome_print"



response = HTTP.get("http://localhost:3000/all.json")

# puts movies = response.parse(:json)

awesome_print movies = response.parse

puts "Please enter the 'id' number of the movie you would like to view:"
number = gets.chomp.to_i 
response = HTTP.get("http://localhost:3000/segment/#{number}")
movie = response.parse(:json)

# puts movie
pp movie
awesome_print movie



