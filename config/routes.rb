Amdb::Application.routes.draw do

  root to: 'Movies#index'

  get '/sessions/new' => 'Sessions#new', as: 'new_session'
  post '/sessions' => 'Sessions#create', as: 'sessions'
  delete '/sessions' => 'Sessions#destroy'

  resources :movies
  resources :votes
  resources :directors
  resources :roles
  resources :actors
  resources :users
end
