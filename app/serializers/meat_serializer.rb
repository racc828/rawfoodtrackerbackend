class MeatSerializer < ActiveModel::Serializer
  attributes :id, :name, :muscle, :bone, :protein_id
end
