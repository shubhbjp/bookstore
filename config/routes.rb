Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'bookstore/index'
  root 'bookstore#index'
  resources :books
  resource :bookstore
  get '/search' => 'bookstore#index'

end
