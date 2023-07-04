Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #resources :fictions, only: [:new, :create]
  get '/fetch_users_likes', to: 'users#fetch_users_likes'
  get '/favorite_fictions', to: "users#fetch_favorite_fictions"
  get '/fetch_fiction_name',to: 'fictions#fetch_fiction_name'
  get '/fav_fiction',     to: 'fictions#fav_fiction'
  get '/fetch_all_likes' , to: "likes#fetch_all_likes"
  post '/create' ,  to: "users#create"
  post '/fiction_create' , to: "fictions#fiction_create"
  post '/likes_create' , to: "likes#likes_create"
  
end


