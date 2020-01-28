class PetController < ApplicationController
  respond_to :json
  
  def index
    render json: Pet.all
  end
end
