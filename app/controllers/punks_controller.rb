class PunksController < ApplicationController

    def index
        punks = Punk.all
        render json: punks

    end

end
