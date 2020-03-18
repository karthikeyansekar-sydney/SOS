Rails.application.routes.draw do
  root :to => 'pages#welcome'
  resources :employees, :only => [:new, :create, :index]
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  resources :employees, :only => [:new, :create]
  resources :orders
  end
