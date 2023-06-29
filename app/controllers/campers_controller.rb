class CampersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found

    def index
        render json: Camper.all, status: :ok
    end

    private

    def render_record_not_found_response
        render json: {error: "Camper not found"}, status: :not_found
    end
end
