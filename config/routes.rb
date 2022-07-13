Rails.application.routes.draw do
  root to: 'homes#top'
  devise_for :users
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show, :edit]
  get 'homes/about', to: 'homes#show', as: :about
  ##about_pathとabout_urlが名前付きルーティングヘルパーとして作成される
  ##about_pathを呼び出すと/homes/aboutが返される
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end