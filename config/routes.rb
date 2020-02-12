Rails.application.routes.draw do
  root  'sports#index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  resources :teams, except: [:index]
  resources :players, except: [:index]
  resources :sports
  resources :users

end
