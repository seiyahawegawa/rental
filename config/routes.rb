Rails.application.routes.draw do
  get 'womans/index'
  devise_for :users
  root "clothesinformations#index"
  resources :clothesinformations, only: :index
  resources :users, only: [:edit, :update]
  resources :womans, only: :index
end
