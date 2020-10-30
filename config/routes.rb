Rails.application.routes.draw do
  root 'welcome#index'
  resources :breweries
  resources :users
  resources :favorites
  resources :reviews
end
