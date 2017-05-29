Rails.application.routes.draw do

  resources :users, :pictures, only: [:index, :new, :create, :destroy]
  root "sessions#new"


  #
  #
  get 'pictures/destroy'




get "/signup" => "users#new"
get "/users" => "users#index"
post "/users" => "users#create"
patch "/users/:id" => "users#update"

get "/account" => "users#edit"
get "/upload" => "pictures#new"
get "/pictures" => "pictures#index"
get "/home" => "pictures#home"
get "/snapshot" => "pictures#snapshot"

get '/login' => 'sessions#new'
post '/login' => 'sessions#create'
get '/logout' => 'sessions#destroy'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
