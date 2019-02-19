Rails.application.routes.draw do
  resources :comentarios
  resources :posts
  resources :users
  
  root 'home#index'

  get 'auth/:provider/callback', to: "sessions#create"

  delete 'sign_out', to: "sessions#destroy", as: 'sign_out'

  resources :post  do
    resources :comments
  end

  resources :user  do
    resources :posts
  end
end
