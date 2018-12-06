Rails.application.routes.draw do
  resources :ingredients
  resources :recipes
  resources :favorites
  resources :users
  get '/', to: 'static_pages#home', as: 'home'
  post '/ingredients/:id/add_to_cabinet', to: 'ingredients#add_to_cabinet', as: 'add_to_cabinet'
  post '/recipes/:id/add_to_favorites', to: 'recipes#add_to_favorites', as: 'add_to_favorites'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
