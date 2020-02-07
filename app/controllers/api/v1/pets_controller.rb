class Api::V1::PetsController < Api::ApiV1Controller
  respond_to :json

  def index
    render json: Pet.all
  end

  def new
    @pet = Pet.new(pet_params)
    if @pet.save
      render json: { pet: @pet }, status: :created
    else
      render json: { errors: @pet.errors }, status: :unprocessable_entity # or :precondition_failed
    end
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :breed, :gender, :size, :birthday_date)
  end
end
