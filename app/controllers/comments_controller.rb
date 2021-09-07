class CommentsController < ApplicationController


    def create
        comment = Comment.new(comment_params)

        if comment.save
            render json: comment
            
        else
           render json: comment.errors 
        end
    end




    def comment_params
        params.require(:comment).permit(:text, :punk_id)
      end
end
