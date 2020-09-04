Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # equivalent to:
  # get "/", "application#index" 
  root 'application#hello'
  # equivalent to:
  # get "/", "application#hello"
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'


end
