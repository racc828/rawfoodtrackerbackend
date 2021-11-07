class BoneSerializer < ActiveModel::Serializer
  attributes :id, :name, :muscle, :bone_content, :protein_id, :protein
end
