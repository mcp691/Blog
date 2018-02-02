Rails.application.routes.draw do
  resources :posts
  
  root 'simple_pages#index'
end
