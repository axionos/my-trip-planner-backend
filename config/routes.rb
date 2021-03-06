Rails.application.routes.draw do
  # AuthController#signin
  post '/login', to: "auth#login"
  post '/signup', to: "users#create"
  get '/profile', to: "users#profile"

  # TRIP
  get '/trips', to: "trips#index"
  post '/new_trip', to: "trips#create"
  patch '/trips/:id', to: "trips#update"
  delete '/trips/:id', to: "trips#destroy"

  # Day
  get '/days/:id', to: "days#show"

  # Item
  get '/items/:id', to: "items#index"
  post '/new_item', to: "items#create"
  delete '/items/:id', to: "items#destroy"
end
