Rails.application.routes.draw do
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :posts
  root 'posts#index'

 get '/wall_test', :to => 'posts#wall_read'
post '/wall_test', :to => 'posts#wall_write'

end
