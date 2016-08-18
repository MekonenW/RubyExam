Rails.application.routes.draw do
  root "users#new"
  
  get '/' => "users#index"

  get '/users/new' => 'users#new'

  get '/users/:id/edit' => 'users#edit'

  get '/users/:id' => 'users#show'

  post '/users' => 'users#create'

  patch '/users/:id' => 'users#update'

  delete '/users/:id' => 'users#destroy'

  post 'sessions' => 'sessions#create'

  delete '/sessions' => 'sessions#destroy'

  get '/events' => 'events#index'

  post '/events'=> 'events#create'

  get '/events/:id' => 'events#show'

  delete '/events/:id' => 'events#destroy'


  post '/comments' => 'comments#create'

  

  
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
