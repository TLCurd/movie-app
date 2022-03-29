class MovieGenresController < ApplicationController
  def create
    moviegenre = MovieGenre.new(movie_id: params[:movie_id], genre_id: params[:genre_id])
    if moviegenre.save
      render json: moviegenre.as_json
    end
  end

  def index
    p moviegenres = MovieGenre.all 
    render json: moviegenres.as_json
  end
end
