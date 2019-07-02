Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  #Create — POST — /games
  #Show — GET — /games/:id
  #Update — PATCH — /games/:id
  #Index — GET — /games
  resources :games
end
