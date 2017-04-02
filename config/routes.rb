Rails.application.routes.draw do

  root to: 'pages#home' 	

  resources :port_folios

  get 'about', to: 'pages#about'

  get 'contact', to: 'pages#contact'

  resources :blogs

end
