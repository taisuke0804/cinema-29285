Rails.application.routes.draw do
  devise_for :users
  root to: "cinemas#index"
  # resources :cinemas, only: [:index, :new, :create, :show, :edit, :destroy, :update]
  resources :cinemas do
    collection do
      get 'search'
    end
  end
  resources :profiles, only: [:index, :new, :create, :show, :edit, :update]
  resources :users, only: :show

  get 'cinemas/search', to: 'cinemas#search'
end
