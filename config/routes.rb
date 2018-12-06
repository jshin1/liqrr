Rails.application.routes.draw do
  resources :ingredients
  resources :recipes
  resources :favorites
  resources :users
  get '/', to: 'static_pages#home', as: 'home'
  post '/ingredients/:id/add_to_cabinet', to: 'ingredients#add_to_cabinet', as: 'add_to_cabinet'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
