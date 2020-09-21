Rails.application.routes.draw do
  devise_for :users
  root to: "cinemas#index"
  resources :cinemas, only: [:index, :new, :create]
  resources :profiles, only: [:index, :new, :create, :show]
end
