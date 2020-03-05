Rails.application.routes.draw do
  get 'users', to: "users#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tags
  devise_for :users
  resources :posts
  resources :categories
  root "home#index"
  put "users/admin", to: "users#admin", :as => :make_users_admin
  
  get "home/index", to: "home#index"
  get "home/suggestions", to: "home#suggestions", :as => :post_suggestions
  get "home/search", to: "home#search", :as => :posts_search
  get "home/read/:id", to: "home#read", :as => :posts_read
  get "home/tags/:tag", to: "home#tags", :as => :tag_search
end
