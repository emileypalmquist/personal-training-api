class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]
  
  def create
    user = User.create(user_params)
    if user.valid?
      user.birthdate = Date.strptime(params[:birthdate],"%m-%d-%Y")
      token = encode_token({ id: user.id })
      render json: {user: UserSerializer.new(user), token: token}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :not_acceptable
    end
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
      render json: {user: UserSerializer.new(user)}, status: :accepted
    else
      render json: {message: 'Something went wrong. Please try again.'}, status: :not_acceptable
    end
  end

  def destroy
  end

  private

  def user_params
    params.permit(:name, :password, :password_confirmation, :email, :profile_photo, :birthdate)
  end
end

      
      