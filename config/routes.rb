Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :workouts, only: [:index]
      resources :appointments, only: [:index, :show, :update, :destroy]
      resources :availabilities, only: [:index]
      resources :users, only: [:destroy, :update]
      post 'signup', to: 'users#create'
      post 'login', to: 'auth#create'
      get 'reauth', to: 'auth#show'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
