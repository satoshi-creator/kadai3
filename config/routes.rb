Rails.application.routes.draw do

devise_for :users
root to: "homes#top"

resources :books, only: [:new, :index, :create, :show, :edit, :destroy]

get 'homes/about' => 'homes#about', as: 'about'
patch 'books/:id' => 'books#update', as: 'update_book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
