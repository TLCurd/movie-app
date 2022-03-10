class ActorsController < ApplicationController
  def first 
    actor = Actor.find_by(id: 9) 
    render json: actor.as_json
  end
end
