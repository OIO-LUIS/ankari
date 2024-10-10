Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :shows
  resources :projects
  resources :auctions
  resources :bookings
  resources :products
  resources :meeting_locations
  get "public_pages/welcome"

  get "/herramientas", to: "public_pages#welcome"
  get "/nosotros", to: "public_pages#about"
  get "/terminos", to: "public_pages#policy"
  get "/cripto", to: "public_pages#crypto"
  get "/porque", to: "public_pages#why"
  get "/vision", to: "public_pages#vision"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "public_pages#welcome"
end
