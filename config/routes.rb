Rails.application.routes.draw do

  resources :breweries
  resources :users
  resources :favorites
  resources :reviews
end
