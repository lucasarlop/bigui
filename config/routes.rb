Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # root to: "home#index"

  namespace :api do
    namespace :v1 do
      # Devise
      devise_for :users

      # Pets
      get 'pets',    to: 'pets#index'
      get 'new_pet', to: 'pets#new'

      # put 'login', to: 'sessions#login'
    end
  end
end