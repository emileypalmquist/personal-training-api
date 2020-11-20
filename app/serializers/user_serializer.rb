class UserSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :name, :email, :birthdate, :profile_photo, :workouts, :appointments
  
  def workouts
    object.workouts
  end

  def appointments
    object.availabilities
  end

  def profile_photo
    if object.profile_photo.attached?
      rails_blob_path(object.profile_photo, only_path: true)
    else
      'https://images.unsplash.com/photo-1576158113928-4c240eaaf360?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80'
    end
  end

end
