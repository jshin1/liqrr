Rails.application.routes.draw do
  resources :ingredients
  resources :recipes
  resources :favorites
  resources :users
  get '/', to: 'static_pages#home', as: 'home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
