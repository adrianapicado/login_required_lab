Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'sessions#new'

  get '/' => 'sessions#new'
  resources :sessions, except: :show
  get '/secrets/show' => 'secrets#show'
  get '/sessions' => 'sessions#show'
  get '/hello' => 'application#hello'
  post '/logout' => 'sessions#destroy'

  
end
