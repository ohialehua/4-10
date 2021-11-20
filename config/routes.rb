Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  resources :users
  get 'users/:id/edit' => 'users#edit'
  resources :books

end
