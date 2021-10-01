class PunkSerializer < ActiveModel::Serializer
  attributes :id, :punktype, :image, :accessories, :likes, :user
  has_many :comments
end
