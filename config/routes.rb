Rails.application.routes.draw do
  root to: "home#index"

  devise_for :users

  resources :home, only: [:index]

  resources :products do
    resources :reviews
  end
end
