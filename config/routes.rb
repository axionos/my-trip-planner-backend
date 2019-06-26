Rails.application.routes.draw do
  # AuthController#signin
  post '/login', to: "auth#login"
  post '/signup', to: "users#create"
  get '/profile', to: "users#profile"
  get '/trips', to: "trips#index"
end
