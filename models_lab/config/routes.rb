Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'products#index'

  get 'buyers/new', to: 'buyers#new'
  get 'buyers/edit', to: 'buyers#edit'
  get 'buyers/index', to: 'buyers#index'
  post 'buyers/create', to: 'buyers#create'
  post 'buyers/update', to: 'buyers#update'

  get 'products/new', to: 'products#new'
  get 'products/edit', to: 'products#edit'
  get 'products/index', to: 'products#index'
  post 'products/create', to: 'products#create'
  post 'products/update', to: 'products#update'

  get 'sellers/new', to: 'sellers#new'
  get 'sellers/edit', to: 'sellers#edit'
  get 'sellers/index', to: 'sellers#index'
  post 'sellers/create', to: 'sellers#create'
  post 'sellers/update', to: 'sellers#update'

  get 'purchases/new', to: 'purchases#new'
  get 'purchases/index', to: 'purchases#index'
  post 'purchases/create', to: 'purchases#create'

end
