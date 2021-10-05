class CommentsController < ApplicationController


    def create
        comment = Comment.create(comment_params)
            render json: comment
    end

    def index
        comments = Comment.all
        render json: comments
    end

    def destroy
        comment = Comment.find_by(id: params[:id])
        comment.destroy
        render json:{message: 'You killed that comment, you weirdo'}
    end

    private

    def comment_params
        params.require(:comment).permit(:text, :punk_id, :user_id, :id)
      end
end
