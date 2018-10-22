Rails.application.routes.draw do
  resources :players
  resources :teams
  devise_for :users
  root 'home#index'
end
