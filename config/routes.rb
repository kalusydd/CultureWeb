Rails.application.routes.draw do
  devise_for :users
  root to: "events#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check


  resources :events, only: [:show, :new, :create, :destroy] do
    resources :chatrooms, only: [:show, :new, :create] do
      resources :messages, only: [:create]
    end
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [:destroy]
  resources :chatrooms, only: [:destroy]
  resources :messages, only: [:destroy]

  get "dashboard", to: "pages#dashboard"
end
