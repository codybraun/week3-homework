Rails.application.routes.draw do
  get '/places/new' => 'places#new'
  get '/places/:id/delete' => 'places#delete'
  get '/places' => 'places#index'
  get '/places/:id' => 'places#show'
  

end
