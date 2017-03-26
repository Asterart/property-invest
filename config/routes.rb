Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'static_pages#home'

  get '/sell', to: 'properties#new'
  get '/buy', to: 'properties#show'
  get '/share', to: 'properties#share'


  resources :properties 

end
