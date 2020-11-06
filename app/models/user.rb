class User < ApplicationRecord
  has_many :appointments
  has_many :availabilities, through: :appointments

  has_many :workouts
end
