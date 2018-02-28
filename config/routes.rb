Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }
  resources :users
  resources :posts

  get 'simple_pages/contact'

  get 'simple_pages/index'

  get 'simple_pages/thank_you'

  root 'simple_pages#index'
end
