class MoviesController < ApplicationController
def index
  movies = Movie.all
  render json: movies.as_json  
end

def create
  movie = Movie.new(title: params[:title], year: params[:year], plot: params[:plot])
  movie.save
  render json: movie.as_json
end

def show
  movie = Movie.find_by(id: params[:id])
  render json: movie.as_json
end

def update
  movie = Movie.find_by(id: params[:id])
  movie.title = params[:title]
  movie.year = params[:year]
  movie.plot = params[:plot]
  movie.save
  render json: movie.as_json
end

def destroy
  movie = Movie.find_by(id: params[:id])
  movie.delete
  render json: {message: "The movie has been deleted."}
end
end
 