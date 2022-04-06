Rails.application.routes.draw do
  #resources :category_items
  #resources :categories
  resources :items
  resources :users, only: [:create, :destroy]

  patch "/items/:id/sold", to: "items#sold"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
