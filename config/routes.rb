Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  authenticate :user, ->(user) { user.admin? } do
    mount Blazer::Engine, at: "blazer"
  end
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/pricing', to: 'pages#pricing'
  get '/bookings', to: 'rentals#booking'
  resources :stations, only: [:index, :show, :new, :create] do 
    get '/training', to: 'equipment_offers#training', as: 'training'
  end
end
