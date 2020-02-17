Rails.application.routes.draw do
  get 'bookings/index'
  get 'bookings/show'
  get 'bookings/new'
  get 'bookings/create'
  get 'bookings/edit'
  get 'bookings/update'
  get 'bookings/destroy'
  get 'friends/index'
  get 'friends/show'
  get 'friends/new'
  get 'friends/create'
  devise_for :users
  root to: 'pages#home'
  resources :friends, only: [:index, :show, :new, :create] do
    resources :bookings
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
