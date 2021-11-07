
class Api::V1::VeggiesController < ApplicationController

    def index
      veggies = Veggie.all     
      render json: veggies
    end
  
    def create      
        veggie = Veggie.create(veggie_params)
        render json: {
            id: veggie.id,
            name: veggie.name
         
        }
    end
  
    def show
      veggie = Veggie.find_by(id: params[:id])
      render json: veggie
    end
  

    private
  
    def veggie_params
      params.require(:veggie).permit(:name)
    end
  
  end