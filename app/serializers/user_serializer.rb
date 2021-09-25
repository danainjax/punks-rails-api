class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :comments, :likes
end
