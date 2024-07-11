Rails.application.routes.draw do
  devise_for :users
  resources :pages
  resources :users


  get 'authenticated', to: 'pages#authenticated', as: 'authenticated'

  authenticated do
    root 'pages#index', as: 'home'
  end
  unauthenticated do
    root 'users#index'
  end
end
