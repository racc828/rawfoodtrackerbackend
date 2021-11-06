
class Api::V1::MealsController < ApplicationController

    def index
      meals = Meal.all     
      render json: meals
    end
  
    def create      
        meal = Meal.create(meal_params)
        render json: {
            id: meal.id,
            name: meal.name,
            pet_id: meal.pet_id
         
        }
    end
  
    def show
      meal = Meal.find_by(id: params[:id])
      render json: meal
    end
  

    private
  
    def meal_params
      params.require(:meal).permit(:name, :pet_id)
    end
  
  end