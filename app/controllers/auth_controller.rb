class AuthController < ApplicationController
  # skip_before_action :authorized, only: [:create]

  def login
    # params: { username: '', password: '' }

    # find the user by their username
    user = User.find_by(username: params["username"])

    # authenticate the username
    is_authenticated = user.authenticate(params["password"])

    # "log in the user"
    if is_authenticated
      render json: { token: encode_token(user) }
    else
      render json: { error: "Wrong username or password" }
    end
  end
end
