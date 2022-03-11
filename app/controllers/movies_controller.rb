class MoviesController < ApplicationController
  def all
    movies = Movie.all.as_json
    render json: movies 
  end
  def specific
    id = params[:id]
    movie = Movie.find_by({id: id})
    render json: movie
  end
end
