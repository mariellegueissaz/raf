Rails.application.routes.draw do
  root to: 'friends#index'
  devise_for :users do
     resources :bookings, only: [:index]
  end
  resources :friends, only: [:index, :show, :new, :create] do
    resources :bookings, except: [:index]
  end

  get '/mybookings', to: 'bookings#index'
end
