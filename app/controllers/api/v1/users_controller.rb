class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]
  
  def create
    user = User.create(user_params)
    if user.valid?
      token = encode_token({ id: user.id })
      render json: {user: UserSerializer.new(user), token: token}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :not_acceptable
    end
  end

  def update
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :password, :password_confirmation, :email, :birthdate)
  end
end

      
      