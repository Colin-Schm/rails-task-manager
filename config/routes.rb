Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "tasks#index"

  get "tasks", to: "tasks#index" # Read all
  get "tasks/new", to: "tasks#new" # Create
  get "tasks/:id", to: "tasks#show", as: :task # Read one
  post "tasks", to: "tasks#create"
  get "tasks/:id/edit", to: "tasks#edit", as: :edit # Select one to update
  patch "tasks/:id", to: "tasks#update" # update
  delete "tasks/:id", to: "tasks#destroy" # Delete
end
