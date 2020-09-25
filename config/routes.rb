Rails.application.routes.draw do
  devise_for :users
  root to: "cinemas#index"
  resources :cinemas, only: [:index, :new, :create, :show]
  resources :profiles, only: [:index, :new, :create, :show, :edit, :update]
  resources :users, only: :show
end
