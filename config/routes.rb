Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  # get '/characters', to: 'character#index'
  get '/characters/all', to: 'character#index_all'
  get '/character/:id', to: 'character#show'
  post '/character', to: 'character#create'
  patch '/character/:id', to: 'character#update'
  delete "/character/:id" => "character#destroy"
  get "/characters", to: 'character#search'

end
