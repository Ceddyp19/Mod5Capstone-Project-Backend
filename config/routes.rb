Rails.application.routes.draw do
  resources :favorites
  resources :destinations, only: [:index, :show, :create]
  # resources :users
  resources :user_destinations
  resources :collages
 
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :index, :destroy]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end

end
