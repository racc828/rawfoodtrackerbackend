
class Api::V1::MeatsController < ApplicationController

    def index
      meats = Meat.all
      meatsJson = meats.map{|meat|
        protein =Protein.find_by(id: meat.protein_id)
        {
            proteinName: protein.name,
            name: meat.name,
            protein_id: meat.protein_id,
            bone: meat.bone,
            muscle: meat.muscle
        }
      }
      sortedMeatsJson = meatsJson.sort_by {|meat|
        meat[:proteinName]
      }
      render json: sortedMeatsJson
    end
  
    def create      
        meat = Meat.create(meat_params)
        render json: {
            id: meat.id,
            name: meat.name,
            protein_id: meat.protein_id,
            bone: meat.bone,
            muscle: meat.muscle
         
        }
    end
  
    def show
      meat = Meat.find_by(id: params[:id])
      render json: meat
    end
  

    private
  
    def meat_params
      params.require(:meat).permit(:name, :protein_id, :bone, :muscle)
    end
  
  end