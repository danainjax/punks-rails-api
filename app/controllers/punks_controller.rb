class PunksController < ApplicationController

    def index
        punks = Punk.limit(25)
        render json: punks

    end

    def show
        punk = Punk.find_by(id: params[:id])
        render json: punk
    end



private
    def punk_params
        params.require(:punk).permit(:punktype, :image, :accessories, :comment_id, :like_id)
    end
end
