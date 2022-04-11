Rails.application.routes.draw do
  #get "/",  controller: "movies", action: "index" 

  root "movies#index" 

  # Routes for the Movie resource:

  # CREATE
  post "/movies" => "movies#create" , as: "movies" #movies_url and movies_path
  get "/movies/new"=>"movies#new" , as: "new_movie" #new_movie_url and new_movie_path
          
  # READ
  get "/movies" => "movies#index" 
  get "/movies/:id"=> "movies#show" , as: "movie" #expects an arg to populate 
  
  # UPDATE
  patch "/movies/:id" => "movies#update" 
  get "/movies/:id/edit" => "movies#edit" , as: "edit_movie" #expects an arg to populate 
  
  # DELETE
  delete "/movies/:id"=> "movies#destroy" , as: "delete_movie"

  #Routes for director resource:
  resource :directors
  get "/directors/:id"=> "directors#show" , as: "director" #expects an arg to populate 
  
  # UPDATE
  patch "/directors/:id" => "directors#update" 
  get "/directors/:id/edit" => "directors#edit" , as: "edit_director" #expects an arg to populate 
  
  # DELETE
  delete "/directors/:id"=> "directors#destroy" 
  

  #------------------------------
end