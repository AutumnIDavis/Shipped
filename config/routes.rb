Rails.application.routes.draw do
  root 'bookings#index'

  resources :bookings
  resources :welcome
  # resources :sessions
  resources :jobs
  resources :boats



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get '/profile/:id' =>'users#show'



  devise_for :users

end
