Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/fetch_users_likes', to: 'users#fetch_users_likes'
  get '/favorite_fictions', to: "users#fetch_favorite_fictions"
  get '/fetch_fiction_name',to: 'fictions#fetch_fiction_name'
  get '/fav_fiction',     to: 'fictions#fav_fiction'
  get '/fetch_all_likes' , to: "likes#fetch_all_likes"
  post '/users_create' ,  to: "users#create"
  post '/fictions_create' , to: "fictions#create"
  post '/likes_create' , to: "likes#create"
  
end


