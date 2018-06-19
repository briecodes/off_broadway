Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :create, :delete, :destroy]
      resources :productions, only: [:index, :show, :create, :delete, :destroy]
      resources :scripts, only: [:index, :show, :create, :delete, :destroy]
      resources :characters, only: [:index, :show, :create, :delete, :destroy]
      # get 'users/username'
      # get 'users/password'
      # get 'users/password_digest'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
