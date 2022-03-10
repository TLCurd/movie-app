
group :development, :test do
  gem 'ffaker'
end

10.times do 
  actor = Actor.new(first_name: FFaker::Name.first_name}, last_name: FFaker::Name.last_name, known_for: FFaker::Movie.title)
  actor.save
end

actor = Actor.create(first_name: FFaker::Name.first_name}, last_name: FFaker::Name.last_name, known_for: FFaker::Movie.title)