class LikesController < ApplicationController

    def create
        like = Like.create(like_params)
        render json: like
    end

    
    
    def index
        likes = Like.all
        render json: likes
    end

    private
    def like_params
        params.require(:like).permit(:count, :id, :punk_id, :user_id)
    end
end
