Rails.application.routes.draw do
  resources :posts

  get 'simple_pages/contact'

  get 'simple_pages/index'

  root 'simple_pages#index'
end
