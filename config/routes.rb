Rails.application.routes.draw do
  resources :movies

#after adding movies we have GET /tasks
# GET /movies/:id
# POST /movies
# PATCH/PUT /movies/:id
# DELETE /movies/:id

# can make custom tasks eg
# get '/movies/recentlyreleased', to: 'movies#recentlyreleased'

# Additional routes can be defined here
end
