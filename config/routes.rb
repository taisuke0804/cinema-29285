Rails.application.routes.draw do
  devise_for :users
  root to: "cinemas#index"
  # resources :cinemas, only: [:index, :new, :create, :show, :edit, :destroy, :update]
  resources :cinemas do
    collection do
      get 'search'
    end
    resources :comments, only: [:create, :destroy]
    # resources :likes, only: [:create, :destroy]
    post '/lile/:cinema_id' => 'likes#create', as: 'like'
    delete '/like/:cinema_id' => 'likes#destroy', as: 'unlike'
  end
  resources :profiles, only: [:index, :new, :create, :show, :edit, :update]
  resources :users, only: :show

  get 'cinemas/search', to: 'cinemas#search'
end
