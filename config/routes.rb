Rails.application.routes.draw do
  devise_for :users
  resources :dreams
  resources :main_profiles
  resources :items
  root to:"dreams#index"
end
