Rails.application.routes.draw do
  get 'users', to: "users#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tags
  devise_for :users
  resources :posts
  resources :categories
  # root "posts#index"
  get "home/index", to: "home#index"
  get "home/search", to: "home#search", :as => :posts_search
  put "users/admin", to: "users#admin", :as => :make_users_admin
  root "home#index"
  
  get "home/read/:id", to: "home#read", :as => :posts_read
  get "home/tags/:tag", to: "home#tags", :as => :tag_search
end
