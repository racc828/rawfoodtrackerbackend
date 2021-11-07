
class Api::V1::LiversController < ApplicationController

    def index
      livers = Liver.all     
      render json: livers
    end
  
    def create      
        liver = Liver.create(liver_params)
        render json: {
            id: liver.id,
            name: liver.name,
            protein_id: liver.protein_id
         
        }
    end
  
    def show
      liver = Liver.find_by(id: params[:id])
      render json: liver
    end
  

    private
  
    def liver_params
      params.require(:liver).permit(:name, :protein_id)
    end
  
  end