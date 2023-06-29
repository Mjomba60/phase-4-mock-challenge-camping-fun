class CampersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found_response

    def index
        render json: Camper.all, include:[], status: :ok
    end

    def show
        render json: Camper.find(params[:id]), status: :ok
    end

    private

    def render_record_not_found_response
        render json: {error: "Camper not found"}, status: :not_found
    end
end
