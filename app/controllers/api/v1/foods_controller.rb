
class Api::V1::FoodsController < ApplicationController

    def index
      foods = Food.all     
      render json: foods
    end
  
    def create      
        food = Food.create(food_params)
        render json: {
            id: food.id,
            category_id: food.category_id,
            ounces: food.ounces,
            meal_id: food.meal_id
         
        }
    end
  
    def show
      food = Food.find_by(id: params[:id])
      render json: food
    end
  

    private
  
    def food_params
      params.require(:food).permit(:category_id, :ounces, :meal_id)
    end
  
  end