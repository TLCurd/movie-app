Rails.application.routes.draw do
#ACTORS
  # all
  get "/actors" => "actors#index"
  # new
  post "/actors" => "actors#create"
  # specific
  get "/actors/:id" => "actors#show"
  # update
  patch "/actors/:id" => "actors#update"
  # delete
  delete "/actors/:id" => "actors#destroy"
#MOVIES
 # all
 get "/movies" => "movies#index"
 # new
 post "/movies" => "movies#create"
 # specific
 get "/movies/:id" => "movies#show"
 # update
 patch "/movies/:id" => "movies#update"
 # delete
 delete "/movies/:id" => "movies#destroy"
#USERS
post "/users" => "users#create"
# Session
post "/sessions" => "sessions#create"
#MOVIE-GENRES
#index
get "/moviegenres" => "movie_genres#index"

#create
post "/moviegenres" => "movie_genres#create"


end
 