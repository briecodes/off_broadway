class Api::V1::CharactersController < ApplicationController
    before_action :get_character, only: [:show]
    def index
        @characters = Character.all
        render json: @characters
    end

    def show
        render json: @character
    end

    private
        def get_character
            @character = Character.find(params[:id])
        end
end
