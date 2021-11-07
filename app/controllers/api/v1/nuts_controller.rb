
class Api::V1::NutsController < ApplicationController

    def index
      nuts = Nut.all     
      render json: nuts
    end
  
    def create      
        nut = Nut.create(nut_params)
        render json: {
            id: nut.id,
            name: nut.name
         
        }
    end
  
    def show
      nut = Nut.find_by(id: params[:id])
      render json: nut
    end
  

    private
  
    def nut_params
      params.require(:nut).permit(:name)
    end
  
  end