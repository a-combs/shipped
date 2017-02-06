Rails.application.routes.draw do
  resources :jobs
  resources :boats
  
  get '/login', to: 'sessions#new'

  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'

  resources :users
  
end
