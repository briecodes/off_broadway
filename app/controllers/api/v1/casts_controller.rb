class Api::V1::CastsController < ApplicationController
  before_action :requires_login, only: [:index, :show, :update, :destroy]

  def index
    @casts = Cast.all
    render json: @casts
  end

  def create
    cast = Cast.new(cast_params)
    if cast.save
      render json: {'castId' => cast.id}
    else
      render json: {error: 'Something went wrong!'}
    end
  end

  private
    def cast_params
      params.permit(:production_id, :actor_id)
    end
end
