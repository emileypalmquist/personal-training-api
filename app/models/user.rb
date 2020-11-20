class User < ApplicationRecord
  has_many :appointments
  has_many :availabilities, through: :appointments
  # has_many :workouts

  has_one_attached :profile_photo

  # validations password
  has_secure_password
  validates :password, confirmation: true
  validates :password, :password_confirmation, presence: true, on: :create

  # other validations
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true , format: { with: URI::MailTo::EMAIL_REGEXP }

  def remove_photo
    profile_photo.purge
  end

  def workouts
    Workout.where(user_id: self.id).order(created_at: :desc)
  end
end
