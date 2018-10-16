Rails.application.routes.draw do

  root 'bus_reservations#new'


  resources :bus_reservations
  resources :dashboards, only: :index
  devise_for :users, controllers: { registrations: "registrations"}



end
