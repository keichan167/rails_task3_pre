Rails.application.routes.draw do
  root to: "homes#top"
  get 'about' => 'homes#about'
  devise_for :users
  resources :books, only: [:new, :index, :show, :create]
  resources :users, only: [:index, :show, :edit, :new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
