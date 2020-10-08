Rails.application.routes.draw do
  resources :users, only: %i[new create show]
  resources :events, only: %i[new create show]
  
  get '/login', to: 'sessions#new'
  post '/login',to: 'sessions#create'
  delete '/logout',to: 'sessions#destroy'

  root 'events#index'
end
