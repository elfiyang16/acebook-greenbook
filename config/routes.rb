Rails.application.routes.draw do
  devise_for :users

  resources :users do
    resources :posts, shallow:false
  end

  resources:posts
  root 'posts#index'


end
