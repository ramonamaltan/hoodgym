Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/pricing', to: 'pages#pricing'
  resources :stations, only: [:index, :show] do 
    get '/training', to: 'equipment_offers#training', as: 'training'
  end

end
