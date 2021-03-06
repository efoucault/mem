Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users
  resources :watches do
    resources :bookings, only: [ :new, :create]
  end
  resources :bookings, only: [:show, :edit, :update] do
    resources :reviews, only: [ :new, :create]
    resources :messages, only: [ :new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
