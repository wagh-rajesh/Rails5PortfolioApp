Rails.application.routes.draw do

  root to: 'pages#home' 	

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  
  resources :port_folios, except: [:show]
  get 'port_folio/:id', to: 'port_folios#show', as: 'port_folio_show'

  resources :blogs

end
