class Api::V1::ArticlesController < ApplicationController

    def index
        articles = Article.all
        render json: articles, except: [:created_at, :updated_at]
    end

end
