
class Api::V1::PetsController < ApplicationController

    def index
      pets = Pets.all
      render json: pets
    end
  
    def create      
        pet = Pet.create(pet_params)
        render json: {
            id: pet.id,
            name: pet.name,
            breed: pet.breed,
            age: pet.age
            user_id: pet.user_id
        }
    end
  
    def show
      pet = Pet.find_by(id: params[:id])
      render json: pet
    end
  

    private
  
    def pet_params
      params.require(:pet).permit(:name, :user_id, :age, :breed)
    end
  
  end