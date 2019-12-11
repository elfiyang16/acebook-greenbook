Rails.application.routes.draw do
  devise_for :users

  resources :users do
    resources :posts, shallow:false
  end

  resources:posts
  root 'posts#index'

 get '/wall_test', :to => 'posts#wall_read'
post '/wall_test', :to => 'posts#wall_write'

end
