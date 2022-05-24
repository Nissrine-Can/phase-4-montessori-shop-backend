Rails.application.routes.draw do
  
resources :favorite_items, only: [:create, :destroy]
resources :items  
  

patch "/items/:id/sold", to: "items#sold"

 get "/listings", to: "items#listings"
 patch"/listings/:id", to: "items#update"
 delete"/listings/:id", to: "items#destroy"
  
resources :users, only: [:destroy, :index]

 

  #logged in user can see their own purchased items
  get "/purchased_items", to: "items#purchased_items"

  post "/signup", to: "users#create"
  get "/me", to: "users#show" 
  post "/login", to: "sessions#login"
  delete "/logout", to: "sessions#logout"

  
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
