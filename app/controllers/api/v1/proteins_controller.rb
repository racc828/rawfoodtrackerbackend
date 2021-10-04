
class Api::V1::ProteinsController < ApplicationController

    def index
      proteins = Protein.all
      render json: proteins
    end
  
    def create      
        protein = Protein.find_by(name: params[:name])
        if protein.present? 
            render json: {
                error: "Protein already exists"
            }, status: 404
        else 
            newProtein = Protein.create(protein_params)
            render json: {
                id: newProtein.id,
                name: newProtein.name,
                meats: newProtein.meats
            }
        end 
       
    end
  
    def show
      protein = Protein.find_by(id: params[:id])
      render json: protein
    end
  

    private
  
    def protein_params
      params.require(:protein).permit(:name)
    end
  
  end