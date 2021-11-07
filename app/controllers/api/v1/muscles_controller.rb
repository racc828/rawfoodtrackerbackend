
class Api::V1::MusclesController < ApplicationController

    def index
      muscles = Muscle.all     
      render json: muscles
    end
  
    def create      
        muscle = Muscle.create(muscle_params)
        render json: {
            id: muscle.id,
            name: muscle.name,
            protein_id: muscle.protein_id
         
        }
    end
  
    def show
      muscle = Muscle.find_by(id: params[:id])
      render json: muscle
    end
  

    private
  
    def muscle_params
      params.require(:muscle).permit(:name, :protein_id)
    end
  
  end