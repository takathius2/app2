Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get "homes/about", to: "homes#show", as: "about"
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show, :edit, :update]
  ##about_pathとabout_urlが名前付きルーティングヘルパーとして作成される
  ##about_pathを呼び出すと/homes/aboutが返される
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end