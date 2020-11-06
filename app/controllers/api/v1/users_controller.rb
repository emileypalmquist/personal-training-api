class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]
  
  def create
  end

  def update
  end

  def destroy
  end
end
resources :workouts, only: [:index]
      
      