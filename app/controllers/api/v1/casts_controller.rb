class Api::V1::CastsController < ApplicationController
    def index
        @casts = Cast.all
        render json: @casts
    end
end
