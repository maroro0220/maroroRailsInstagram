Rails.application.routes.draw do
  root 'posts#index'
  #index
  get '/posts' => 'posts#index'

  #Create
  get '/posts/new' => 'posts#new'
  post '/posts' => 'posts#create'

  #Read
  get '/posts/:id' =>'posts#read'

  #Update
  get '/posts/:id/edit' =>'posts#edit'
  put '/posts/:id' =>'posts#update'

  #Delete
  delete '/posts/:id' => 'posts#delete'
end
