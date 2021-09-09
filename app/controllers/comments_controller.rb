class CommentsController < ApplicationController


    def create
        comment = Comment.create(comment_params)
            render json: comment
    end




    def comment_params
        params.require(:comment).permit(:text, :punk_id)
      end
end
