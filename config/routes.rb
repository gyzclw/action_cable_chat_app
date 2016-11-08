Rails.application.routes.draw do
  get 'chatrooms/show'

  root 'messages#index'
  resources :users
  resources :messages
  resources :chatrooms, param: :slug
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
