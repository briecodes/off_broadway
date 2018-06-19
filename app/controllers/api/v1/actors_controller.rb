class Api::V1::ActorsController < ApplicationController
    before_action :get_actor, only: [:show]
    def index
        @actors = Actor.all
        render json: @actors
    end

    def show
        render json: @actor
    end

    private
        def get_actor
            @actor = Actor.find(params[:id])
        end
end
