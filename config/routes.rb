Shouter::Application.routes.draw do
  root to: 'homes#show', via: :get
  #singleton resouce, it doesn't have an id
  resource :dashboard, only: [:show]
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :shouts, only: [:show]
  resources :text_shouts, only: [:create]
end
