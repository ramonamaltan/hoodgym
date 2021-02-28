Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  authenticate :user, ->(user) { user.admin? } do
    mount Blazer::Engine, at: "blazer"
  end
  devise_for :users
  root to: 'pages#home'
  get '/pricing', to: 'pages#pricing'
  get '/bookings', to: 'rentals#booking'
  resources :chatrooms, only: [:show]
  resources :stations, only: [:index, :show, :new, :create] do 
    get '/training', to: 'equipment_offers#training', as: 'training'
  end
end
