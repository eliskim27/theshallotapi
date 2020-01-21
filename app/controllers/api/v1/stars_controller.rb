class Api::V1::StarsController < ApplicationController

    def index
        stars = Star.all
        render json: stars, except: [:created_at, :updated_at]
    end

    def create
        star = Star.create!(star_params)
        render json: star, except: [:created_at, :updated_at]
    end

    
    
private
    def star_params
        params.permit(:user_id, :article_id)    
    end
end
