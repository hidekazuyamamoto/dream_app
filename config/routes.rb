Rails.application.routes.draw do
  devise_for :users
  resources :dreams do
    resources :main_profiles
  end
  root to:"dreams#index"
end
