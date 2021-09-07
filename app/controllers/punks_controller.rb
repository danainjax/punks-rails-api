class PunksController < ApplicationController

    def index
        punks = Punk.limit(100)
        render json: punks

    end



private
    def punk_params
        params.require(:punk).permit(:punktype, :image, :accessories)
    end
end
