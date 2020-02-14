Rails.application.routes.draw do
  root  'sports#index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  post '/favorites/:id', to: 'favorites#create', as: 'new_favorite'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  resources :teams, only: [:show]
  resources :players, only: [:show, :index]
  resources :sports, only: [:index, :show]
  resources :users, except: [:index]
  resources :favorites, only: [:destroy]

end
