
class Api::V1::BonesController < ApplicationController

    def index
      bones = Bone.all
      bonesJson = bones.map{|bone|
        protein =Protein.find_by(id: bone.protein_id)
        {
            proteinName: protein.name,
            name: bone.name,
            protein_id: bone.protein_id,
            bone: bone.bone_content,
            muscle: bone.muscle
        }
      }
      sortedBonesJson = bonesJson.sort_by {|bone|
        bone[:proteinName]
      }
      render json: sortedBonesJson
    end
  
    def create      
      byebug
        bone = Bone.create(bone_params)
        render json: {
            id: bone.id,
            name: bone.name,
            protein_id: bone.protein_id,
            bone: bone.bone_content,
            muscle: bone.muscle
         
        }
    end
  
    def show
      bone = Bone.find_by(id: params[:id])
      render json: bone
    end
  

    private
  
    def bone_params
      params.require(:bone).permit(:name, :protein_id, :bone_content, :muscle)
    end
  
  end