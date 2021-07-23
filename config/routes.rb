Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  
  get 'profile', to: 'users#show'

  resources :workshops, only: [:show, :new, :create]  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'
end
