Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :rentals, only: [:index]
  resources :accessories, only: [:index, :show] do
    resources :rentals, only: [:create]
  end
  namespace :owner do
    resources :accessories [:create, :new, :index]
    resources :rentals, only: [:index] do
      member do
        patch :accept
        patch :decline
      end
    end
  end
end
