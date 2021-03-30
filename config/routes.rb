Rails.application.routes.draw do
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  get "/invite", to: "events#edit"
  post "/invite", to: "events#update"
  # delete "/invite", to: "event_invitations#destroy"

  root "events#index"
  resources :users, only: %i[new create show]
  resources :events, only: %i[index show new create edit update]
  resources :sessions, only: %i[new create destroy]
  resources :event_invitations, only: %i[new create destroy]
end
