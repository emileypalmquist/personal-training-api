class Api::V1::WorkoutsController < ApplicationController

  def index
    workouts = Workout.where(user_id: @user.id).order(created_at: :desc)
    render json: workouts
  end
end
