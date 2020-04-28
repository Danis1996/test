Rails.application.routes.draw do
  resources :envoyers
  root 'fichier_reclamations#index'
  resources :user_reclamations
  resources :fichier_reclamations
  resources :fichiers
  resources :reclamations
  devise_for :views
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
