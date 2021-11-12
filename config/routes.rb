Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get 'homes/about' => 'homes#about'
  resources :users
  resources :books
  post 'users/:id' => 'users#create'

end
