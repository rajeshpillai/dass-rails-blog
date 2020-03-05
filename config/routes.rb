Rails.application.routes.draw do
  get 'users', to: "users#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tags
  devise_for :users
  resources :posts
  resources :categories
  # root "posts#index"
  get "home/index", to: "home#index"
  root "home#index"

  get 'home/tags/:tag', to: "home#search", :as => :tag_search
end
