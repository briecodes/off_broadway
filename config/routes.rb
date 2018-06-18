Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :productions
    end
  end
  resources :productions
  resources :scripts
  resources :characters
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
