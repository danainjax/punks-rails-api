class CommentSerializer < ActiveModel::Serializer
  attributes :id, :text, :user_id, :punk_id
end
