class Api::V1::AuthController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    user = User.find_by(email: user_login_params[:email])
    if user && user.authenticate(user_login_params[:password])
      token = encode_token(id: user.id)
      render json: {user: UserSerializer.new(user), token: token}, status: :accepted
    else
      render json: { message: 'Invalid email or password' }, status: :unauthorized
    end
  end

  def show
    render json: {user: UserSerializer.new(@user)}, status: :accepted
  end

  private

  def user_login_params
    params.require(:user).permit(:email, :password)
  end

end