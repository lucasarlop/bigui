class PetController < ApplicationController
  respond_to :json

  def index
    render json: Pet.all
  end

  def new
    render json: { pet: Pet.create(pet_params) }
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :breed, :gender, :size, :birthday_date)
  end
end
