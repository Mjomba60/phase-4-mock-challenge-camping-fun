class CampersController < ApplicationController
    def index
        render json: Camper.all, status: :ok
    end
end
