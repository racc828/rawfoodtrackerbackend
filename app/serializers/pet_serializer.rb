class PetSerializer < ActiveModel::Serializer
  attributes :id, :breed, :age, :name, :portions
end
