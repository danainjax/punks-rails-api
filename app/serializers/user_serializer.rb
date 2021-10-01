class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :comments, :likes, :punks
 
end
