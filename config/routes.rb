Rails.application.routes.draw do
  get 'home', to: 'static#home'
  resources :orders
  resources :invoices
<<<<<<< HEAD
  resources :products, only: [:index, :new, :create]
=======
  resource :products
>>>>>>> 978e883bef88b8be0e5c671c5f7578e2f2b2e077

  get '/products/:id/description', to: 'products#description'
  get '/products/:id/inventory', to: 'products#inventory'
end
