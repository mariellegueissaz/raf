Rails.application.routes.draw do
  root to: 'friends#index'
  devise_for :users
  resources :friends, only: [:index, :show, :new, :create] do
    resources :bookings
  end
  resources :bookings, only: :create
  get 'book_friend', to: 'bookings#book_friend'
end
