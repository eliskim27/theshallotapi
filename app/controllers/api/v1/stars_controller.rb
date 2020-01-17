class Api::V1::StarsController < ApplicationController

    def index
        stars = Star.all
        render json: stars, except: [:created_at, :updated_at]
    end

end
