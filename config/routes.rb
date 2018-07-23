Rails.application.routes.draw do
  post '/sessions', to: 'sessions#create', as: 'sessions'
  post '/logout', to: 'sessions#destroy', as: 'log_out'
  resources :posts
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :create, :delete, :destroy]
      resources :productions, only: [:index, :show, :create, :delete, :destroy]
      resources :scripts, only: [:index, :show, :create, :delete, :destroy]
      resources :actors, only: [:index, :show, :create, :delete, :destroy]
      resources :casts, only: [:index, :show, :create, :delete, :destroy]
      # get 'users/username'
      # get 'users/password'
      # get 'users/password_digest'
    end
  end
end
