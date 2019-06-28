Rails.application.routes.draw do
  # AuthController#signin
  post '/login', to: "auth#login"
  post '/signup', to: "users#create"
  get '/profile', to: "users#profile"

  get '/trips', to: "trips#index"
  post '/new_trip', to: "trips#create"
  patch '/trips/:id', to: "trips#update"
  delete '/trips/:id', to: "trips#destroy"
end
