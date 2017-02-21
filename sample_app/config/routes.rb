Rails.application.routes.draw do
	resources :orders, only: [:index, :show, :create, :destroy]
  resources :products
  get 'static_pages/about'
  
  get 'static_pages/contact'

  post 'static_pages/received'
  get 'static_pages/received'

  get 'static_pages/featured'

  get 'static_pages/index'
  
  root "static_pages#index"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

