class Api::V1::UsersController < ApplicationController
    before_action :get_user, only: [:show, :update]

    def index
        users = User.all
        @users = users.map do |user|
            {id: user.id, username: user.username}
        end
        render json: @users
    end

    def show
        render json: @user
    end

    # def new
    #     @user = User.new
    # end

    def create
        user = User.create(user_params)
        if user.save
            render json: @user
        else
            render json: {error: 'Something went wrong!'}
        end
    end

    def update
      @user.update(user_params)
      if @user.save
        render json: @user, status: :accepted
      else
        render json: {errors: @user.errors.full_messages}, status: :unprocessible_entity
      end
    end

    private
        def get_user
            @user = User.find(params[:id])
        end

        def user_params
            params.require(:user).permit(:username, :password)
        end
end
