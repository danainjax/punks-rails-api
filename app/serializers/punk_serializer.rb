class PunkSerializer < ActiveModel::Serializer
  attributes :id, :punktype, :image, :accessories, :comments
end
