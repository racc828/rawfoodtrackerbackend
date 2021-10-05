
class Api::V1::PortionsController < ApplicationController

    def index
      portions = Portions.all
      render json: portions
    end
  
    def create      
        portion = Portion.create(portion_params)
        render json: {
            id: portion.id,
            muscle: portion.muscle,
            bone: portion.bone,
            vegetable: portion.vegetable, 
            liver: portion.liver,
            secretingOrgan: portion.secretingOrgan,
            nut: portion.nut,
            fruit: portion.fruit,
            pet_id: portion.pet_id
        }
    end
  
    def show
      portion = Portion.find_by(id: params[:id])
      render json: portion
    end
  

    private
  
    def portion_params
      params.require(:portion).permit(:muscle, :bone, :vegetable, :liver, :secretingOrgan, :nut, :fruit, :pet_id)
    end
  
  end