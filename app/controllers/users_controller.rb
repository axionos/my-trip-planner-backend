class UsersController < ApplicationController
  def create
    # byebug
    # params: { username: '', password: '' }
    user = User.create(user_params)

    is_valid = user.valid?

    # If the user is valid
    # byebug
    if is_valid
      # create a token for them and send the token back to the frontend
      render json: { token: encode_token(user) }
    else
      render json: { errors: user.errors.full_message }
    end
  end


def profile
  # byebug

  render json: session_user
end


  private

  def user_params
    params.permit(:username, :password)
    # byebug
  end
end
