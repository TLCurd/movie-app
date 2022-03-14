require "ffaker"

10.times do 
  actor = Actor.create(first_name: FFaker::Name.first_name, last_name: FFaker::Name.last_name, known_for: FFaker::Movie.title)
end

# Movie.create(title: "No Country for Old Men", year: 2007, plot:"Violence and mayhem ensue after a hunter stumbles upon a drug deal gone wrong and more than two million dollars in cash near the Rio Grande.")

# Movie.create(title: "Star Wars: Episode IX - The Rise of Skywalker", year: 2019, plot:"In the riveting conclusion of the landmark Skywalker saga, new legends will be born-and the final battle for freedom is yet to come.")

# Movie.create(title: "Midsommar", year: 2019, plot:"A couple travels to Northern Europe to visit a rural hometown's fabled Swedish mid-summer festival. What begins as an idyllic retreat quickly devolves into an increasingly violent and bizarre competition at the hands of a pagan cult.")

# Movie.create(title: "Hereditary", year: 2018, plot:"A grieving family is haunted by tragic and disturbing occurrences.")

