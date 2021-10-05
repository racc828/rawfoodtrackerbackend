class UserSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :fullname, :email, :username, :pets
end
