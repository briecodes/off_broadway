class ApplicationController < ActionController::API
  def get_secret
    ENV['JWT_SECRET']
  end

  def create_token(payload)
    token = JWT.encode payload, ENV['JWT_SECRET'], 'HS256'
  end

  def get_token
    request.headers['Authorization']
  end

  def get_decoded_token
    token = get_token()
    begin
      decoded_token = JWT.decode token, get_secret(), true, { algorithm: 'HS256' }
    rescue JWT::DecodeError
      return nil
    end
    decoded_token
  end

  def requires_login
    if !is_authenticated?
      render json: {
        message: 'Warning!',
        error: 'Not authorized.'
      }, status: :unauthorized
    end
  end

  def is_authenticated?
    !!get_decoded_token
  end

  def requires_user_match
    @user = User.find_by(id: params[:user_id])
    if @user.id != get_decoded_token[0]['id']
      render json: {
        message: 'Unauthorized User.'
      }, status: :unauthorized
    end
  end

end
