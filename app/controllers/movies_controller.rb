class MoviesController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    @movies = Movie.all
    render template: "movies/index" 
  end

  def create
    movie = Movie.new(title: params[:title], year: params[:year], plot: params[:plot], director: params[:director], genre: [params[:genre]])
    if movie.save
      render json: movie.as_json
    else
      render json: {message: "This movie wasn't added to the database for the following reasons: #{movie.errors.full_messages}."}, status: :unprocessable_entity
    end
  end

  def show
    @movie = Movie.find_by(id: params[:id])
    render template: "movies/show"
  end

  def update
    movie = Movie.find_by(id: params[:id])
    movie.title = params[:title]
    movie.year = params[:year]
    movie.plot = params[:plot]
    movie.director = params[:director]
    movie.english = params[:english]
    if movie.save
      render json: movie.as_json
    else
      render json: {message: "This movie wasn't added to the database for the following reasons: #{movie.errors.full_messages}."}, status: :unprocessable_entity
    end
  end

  def destroy
    movie = Movie.find_by(id: params[:id])
    movie.delete
    render json: {message: "The movie has been deleted."}
  end
end
 