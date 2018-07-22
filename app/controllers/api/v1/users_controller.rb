class Api::V1::UsersController < ApplicationController
    before_action :get_user, only: [:show]

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

    def new
        @user = User.new
    end

    def create
        user = User.create(user_params)
        if user.save
            render json: @user
        else
            render json: {error: 'Something went wrong!'}
        end
    end

    def destroy
        @user.destroy
        render json: {status: 'Deleted!'}
    end

    private
        def get_user
            @user = User.find(params[:id])
        end

        def user_params
            params.require(:user).permit(:username, :password, :password_digest, :name)
        end
end
