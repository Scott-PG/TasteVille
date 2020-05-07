Rails.application.routes.draw do
  resources :flavors, only: :index
  resources :foods
  get 'flavors/:flavor_id/foods/:id/', to: 'foods#add_flavor'
  post '/auth/login', to: 'authentication#login'
  get '/auth/verify', to: 'authentication#verify'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end