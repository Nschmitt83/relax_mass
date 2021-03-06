Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :services, only: [:show]
  resources :bookings, only: [:show] do
  resources :reviews, only: [:new, :create]
  end
  resources :profils, only: [:show, :edit, :update]
  resources :masseurs, only: [:show, :index] do
    resources :bookings, only: [:create, :new]
    resources :massages, only: [:create]
  end
  resources :payments, only: [:create]
end
