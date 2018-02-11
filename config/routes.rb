Rails.application.routes.draw do
  resources :posts

  get 'simple_pages/contact'

  get 'simple_pages/index'

  get 'simple_pages/thank_you'

  root 'simple_pages#index'
end
