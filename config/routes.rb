Rails.application.routes.draw do
  devise_for :users
  resources :dreams
  resources :main_profiles
  root to:"dreams#index"
end
