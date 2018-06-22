class Api::V1::ActorsController < ApplicationController
    before_action :get_actor, only: [:show]
    def index
        @actors = Actor.all
        render json: @actors
    end

    def show
        render json: @actor
    end

    def create
        actor = Actor.new(actor_params)
        if actor.save
            render json: {'actorId' => actor.id}
        else
            render json: {error: 'Something went wrong!'}
        end
    end

    private
        def get_actor
            @actor = Actor.find(params[:id])
        end
        def actor_params
            params.permit(:name, :cv, :img_url, :svg_url)
        end
end
