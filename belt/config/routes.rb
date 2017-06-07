Rails.application.routes.draw do
 get '/' => 'users#index'
 post '/users/create' => 'users#create'
 post '/sessions/new' => 'sessions#new'
 get '/users/:id' => 'users#show'
 post '/songs/create' => 'songs#create'
 get '/songs/:id' => 'songs#show'
 post '/playlist/:song_id/create' => 'playlists#create'
 get '/users/:id/list' => 'users#list'
 delete '/sessions/:id' => 'sessions#destroy'
end
