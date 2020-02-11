Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root  'sports#index'


  resources :teams, except: [:index]
  resources :players
  resources :sports
  resources :users

end
