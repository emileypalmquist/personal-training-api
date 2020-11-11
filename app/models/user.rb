class User < ApplicationRecord
  has_many :appointments
  has_many :availabilities, through: :appointments
  has_many :workouts

  # validations password
  has_secure_password
  validates :password, confirmation: true
  validates :password, :password_confirmation, presence: true, on: :create

  # other validations
  validates :username, uniqueness: { case_sensitive: false }
  validates :name, presence: true
  validates :email, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
