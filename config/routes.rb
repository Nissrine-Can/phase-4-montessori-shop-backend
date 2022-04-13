Rails.application.routes.draw do
  #resources :category_items
  resources :categories, only: [:index, :show]
  resources :items
  resources :users, only: [:destroy, :index]

  patch "/items/:id/sold", to: "items#sold"

  #logged in user can see their own purchased items
  get "/purchased_items", to: "items#purchased_items"

  post "/signup", to: "users#create"
  get "/me", to: "users#show" 
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
