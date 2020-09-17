Rails.application.routes.draw do
  get 'clothesinformations/index'
  root "clothesinformations#index"
  
end
