class LikeSerializer < ActiveModel::Serializer
  attributes :id, :count, :punk_id, :user_id
end
