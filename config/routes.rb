Rails.application.routes.draw do
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  root "users#new"
  resources :users, only: %i[new create show]
  resources :sessions, only: %i[new create destroy]
end
