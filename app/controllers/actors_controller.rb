class ActorsController < ApplicationController
  def index
    all = Actor.all
    render json: all.as_json
  end

  def create
    actor = Actor.new(first_name: params[:first_name], last_name: params[:last_name], known_for: params[:known_for])
    actor.save 
    render json: actor.as_json
  end

  def show
    actor = Actor.find_by(id: params[:id])
    render json: actor.as_json
  end

  def update
    actor = Actor.find_by(id: params[:id])
    actor.first_name = params[:first_name]
    actor.last_name = params[:last_name]
    actor.known_for = params[:known_for]
    actor.save
    render json: actor.as_json
  end

  def destroy
    actor = Actor.find_by(id: params[:id])
    actor.delete 
    render json: {message: "The actor has been deleted."}
  end
end
 