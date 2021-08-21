Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create, :destroy] do
    resources :messages, only: [:index, :create]
  end
  get 'messages/index'
  root to: "rooms#index"  
end
