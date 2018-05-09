Rails.application.routes.draw do
  root 'map#index', as: 'map_index'

  resources :party_members
  resources :characters
  resources :factions
  resources :places
  resources :regions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
