Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # root to: "home#index"

  # Pets
  get 'pets',    to: 'pet#index'
  get 'new_pet', to: 'pet#new'
end
