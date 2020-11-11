class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :birthdate, :workouts 
  # has_many :appointments
  
  def workouts
    object.workouts
  end

end
