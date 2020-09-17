Rails.application.routes.draw do
  devise_for :users
  root "clothesinformations#index"
  resources :users, only: [:edit, :update]
end
