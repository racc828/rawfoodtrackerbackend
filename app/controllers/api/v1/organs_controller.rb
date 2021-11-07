
class Api::V1::OrgansController < ApplicationController

    def index
      organs = Organ.all     
      render json: organs
    end
  
    def create      
        organ = Organ.create(organ_params)
        render json: {
            id: organ.id,
            name: organ.name,
            protein_id: organ.protein_id
        
        }
    end
  
    def show
      organ = Organ.find_by(id: params[:id])
      render json: organ
    end
  

    private
  
    def organ_params
      params.require(:organ).permit(:name, :protein_id)
    end
  
  end