class CommentSerializer < ActiveModel::Serializer
  attributes :id, :text, :punk_id, :user_id
end
