Rails.application.routes.draw do
  resources :ingredients
  resources :recipes
  resources :favorites
  resources :users
  get '/', to: 'static_pages#home', as: 'home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  patch '/favorites', to: 'favorites#update', as: 'add_to_favorites'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
