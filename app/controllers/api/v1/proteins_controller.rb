
class Api::V1::ProteinsController < ApplicationController

    def index
      proteins = Protein.all
      render json: proteins
    end
  
    def create      
        protein = Protein.create(protrein_params)
        render json: {
            id: protein.id,
            name: protein.name
        }
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