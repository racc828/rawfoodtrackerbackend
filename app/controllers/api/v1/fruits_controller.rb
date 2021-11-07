
class Api::V1::FruitsController < ApplicationController

    def index
      fruits = Fruit.all     
      render json: fruits
    end
  
    def create      
        fruit = Fruit.create(fruit_params)
        render json: {
            id: fruit.id,
            name: fruit.name
         
        }
    end
  
    def show
      fruit = Fruit.find_by(id: params[:id])
      render json: fruit
    end
  

    private
  
    def fruit_params
      params.require(:fruit).permit(:name)
    end
  
  end