Djacb::Application.routes.draw do
  resources :ratings


  resources :comments


  resources :songs


  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end