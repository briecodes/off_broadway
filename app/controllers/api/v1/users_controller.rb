class Api::V1::UsersController < ApplicationController
    before_action :get_user, only: [:show, :update]
    before_action :requires_login, only: [:index, :show, :update, :destroy]

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

    def create
      user = User.create(user_params)
      if user.save
        payload = {
          username: user.username
        }
        token = JWT.encode payload, ENV['JWT_SECRET'], 'HS256'
        render json: {
          token: token,
          user: user
        }
      else
        render json: {errors: user.errors.full_messages}, status: :unprocessible_entity
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
