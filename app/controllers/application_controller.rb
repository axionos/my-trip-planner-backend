class ApplicationController < ActionController::API

  # before_action :authorized


  def user_payload(user)
    { user_id: user.id }
  end

  def encode_token(user)
    JWT.encode(user_payload(user), secret, 'HS256')
  end

  def token
    request.headers["Authorization"]
    # byebug
  end

  def secret
    "otters"
  end

  def decoded_token
    JWT.decode token, secret, true, { algorithm: 'HS256' }
  end

  def session_user
    user = User.find(decoded_token[0]["user_id"])
  end

  # def logged_in?
  #   !!session_user
  # end
  #
  # def authorized
  #   render json: { message: "Please log in" }, status: :unauthorized unless logged_in?
  # end
end
