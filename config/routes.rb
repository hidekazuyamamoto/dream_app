Rails.application.routes.draw do
  devise_for :users
  resources :dreams
  resources :main_profiles
  resources :items do
    resources :sub_purchased_logs
  end
  root to:"dreams#index"
end
