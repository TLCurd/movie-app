require "ffaker"

# 10.times do 
#   actor = Actor.create(first_name: FFaker::Name.first_name, last_name: FFaker::Name.last_name, known_for: FFaker::Movie.title)
# end

actor = Actor.create(first_name: "John", last_name: "Travolta", known_for: "Saturday Night Fever", gender: "Male", age: 68, movie_id: 2)

actor = Actor.create(first_name: "Samuel", last_name: "Jackson", known_for: "Snakes on a Plane", gender: "Male", age: 73, movie_id: 2)

actor = Actor.create(first_name: "Uma", last_name: "Thurman", known_for: "Kill Bill", gender: "Female", age: 51, movie_id: 2)

# Movie.create(title: "No Country for Old Men", year: 2007, plot:"Violence and mayhem ensue after a hunter stumbles upon a drug deal gone wrong and more than two million dollars in cash near the Rio Grande.")

# Movie.create(title: "Star Wars: Episode IX - The Rise of Skywalker", year: 2019, plot:"In the riveting conclusion of the landmark Skywalker saga, new legends will be born-and the final battle for freedom is yet to come.")

# Movie.create(title: "Midsommar", year: 2019, plot:"A couple travels to Northern Europe to visit a rural hometown's fabled Swedish mid-summer festival. What begins as an idyllic retreat quickly devolves into an increasingly violent and bizarre competition at the hands of a pagan cult.")

# Movie.create(title: "Hereditary", year: 2018, plot:"A grieving family is haunted by tragic and disturbing occurrences.")

