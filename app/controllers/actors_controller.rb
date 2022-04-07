class ActorsController < ApplicationController
  # before_action :authenticate_admin, except: [:index, :show]
  
  def index
    @actors = Actor.all
    render template: "actors/index"
  end

  def create
    actor = Actor.new(first_name: params[:first_name], last_name: params[:last_name], known_for: params[:known_for], gender: params[:gender], age: params[:age], movie_id: params[:movie_id])
    if actor.save 
      render json: actor.as_json
    else 
      render json: {error: "This entry is invalid for the following reasons: #{actor.errors.full_messages}"}, status: :unprocessable_entity 
    end
  end

  def show
    @actor = Actor.find_by(id: params[:id])
    render template: "actors/show"
  end

  def update
    actor = Actor.find_by(id: params[:id])
    actor.first_name = params[:first_name]
    actor.last_name = params[:last_name]
    actor.known_for = params[:known_for]
    actor.gender = params[:gender]
    actor.age = params[:age]
    actor.movie_id = params[:movie_id]
    if actor.save
      render json: actor.as_json
    else
      render json: {message: "This update is invalid for the following reasons: #{actor.errors.full_messages}."}, status: :unprocessable_entity
    end
  end

  def destroy
    actor = Actor.find_by(id: params[:id])
    actor.delete 
    render json: {message: "The actor has been deleted."}
  end
end
 