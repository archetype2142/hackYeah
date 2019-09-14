Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'lot_auth#index'
  resources :onboarding
  resources :sub_categories
  resources :lot_auth

  namespace :api do
    resources :user, only: [:show]
    resources :categories, only: [:show]
  end
end
