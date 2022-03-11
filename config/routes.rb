Rails.application.routes.draw do
  # get "/actor1" => "actors#first"

  get "/all" => "movies#all"
  get "/individual" => "movies#specific"
  get "/segment/:id" => "movies#specific"

end
