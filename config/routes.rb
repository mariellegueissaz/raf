Rails.application.routes.draw do
  root to: 'friends#index'
  devise_for :users
  resources :friends, only: [:index, :show, :new, :create, :edit, :update] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, except: [:new, :create] do
    resources :reviews, only: [:new, :create]
  end


  resources :bookings, only: :create
  get 'book_friend', to: 'bookings#book_friend'
  get '/mybookings', to: 'bookings#index'
end
