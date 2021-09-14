class UsersController < ApplicationController

    def create
        user = User.create(user_params)
        render json :user

    end

    def show
        user= User.find_by(id: params[:id])
        render json: user
    end

    def index
        users = User.all
        render json: users
    end

    private

    def comment_params
        params.require(:user).permit(:username, :comment_id)
    end 
end
