Rails.application.routes.draw do
  resources :tags
  devise_for :users
  resources :posts
  resources :categories
  root "posts#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
