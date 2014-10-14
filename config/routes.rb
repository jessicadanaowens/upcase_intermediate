Shouter::Application.routes.draw do
  root to: 'homes#show', via: :get
  #singleton resouce, it doesn't have an id
  resource :dashboard, only: [:show]
  resource :session, only: [:new, :create, :destroy]
  resource :search, only: [:show]
  resources :users, only: [:new, :create, :show, :index] do
    post 'follow' => 'following_relationships#create'
    delete 'follow' => 'following_relationships#destroy'
  end

  resources :shouts, only: [:show]
  resources :text_shouts, only: [:create]
  resources :photo_shouts, only: [:create]
  resources :hashtags, only: [:show]
end
