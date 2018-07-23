class SessionsController < ApplicationController
  def create
    @user = User.find_by(username: params['username'])
    if (@user && @user.authenticate(params['password']))
      token = create_token({username: @user.username, user_id: @user.id})
      render json: {
        user: @user
        # user: @user,
        # token: token
      }
    else
      render json: {
        errors: 'Those credentials do not match anything we have in our database.'
      }, status: :unauthorized
    end
  end
end
