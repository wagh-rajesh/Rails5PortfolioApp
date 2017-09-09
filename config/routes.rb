Rails.application.routes.draw do

  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  resources :port_folios, except: [:show] do
    put :sort, on: :collection  
  end
  get 'ror-portfolio-items', to: 'port_folios#ruby_on_rails'
  get 'port_folio/:id', to: 'port_folios#show', as: 'port_folio_show'

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'tech-news', to: 'pages#tech_news'

  resources :blogs do
  	member do
  		get :toggle_status
  	end
  end

  mount ActionCable.server => '/cable'
  root to: 'pages#home'   

end
