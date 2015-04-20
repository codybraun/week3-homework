Rails.application.routes.draw do
  get '/places/new' => 'places#new'
  get '/places/create/' => 'places#create'
  get '/places/review/:id' => 'places#review'
  get '/places/:id/delete' => 'places#delete'
  get '/places/:id' => 'places#show'
  get '/places' => 'places#index'
  

end
