class PunksController < ApplicationController

    def index
        punks = Punk.limit(100)
        render json: punks

    end

end
