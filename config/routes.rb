Rails.application.routes.draw do
  root "homes#index"

  get "/homes", to: "homes#index"
  get "/homes/:id", to: "homes#show"
  post "/crehomes", to: "homes#create"

  resources :requests
  resources :owners
  resources :locations
  resources :clients
end
