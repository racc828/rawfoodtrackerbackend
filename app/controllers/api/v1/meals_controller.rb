
class Api::V1::MealsController < ApplicationController

    def index
      meals = Meal.all     
      render json: meals
    end


    def get_all_categories 
        veggies = Veggie.all
        fruits = Fruit.all
        nuts = Nut.all 
        organs = Organ.all 
        livers = Liver.all
        bones = Bone.all
        muscles = Muscle.all
        category_json = {
            veggies: veggies, 
            fruits: fruits,
            nuts: nuts,
            organs: organs,
            livers: livers,
            bones: bones,
            muscles: muscles
        }
        render json: category_json
    end
  
    def create      
        meal = Meal.create(meal_params)
        foodTypes = params[:foods]
        foodTypes.map { |food| 
            Food.create("category_id": food[:id], "ounces": food[:ounces], "meal_id": meal.id, "category_name": food[:categoryName])
        }
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
      params.require(:meal).permit(:name, :pet_id, foods: [:id, :name, :ounces, :categoryName])
    end
  
  end