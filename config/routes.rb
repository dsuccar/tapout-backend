Rails.application.routes.draw do
  root 'welcome#index'
  resources :breweries
  resources :users
  resources :favorites
end
