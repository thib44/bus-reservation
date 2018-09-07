Rails.application.routes.draw do
  resources :bus_reservations
  resources :dashboards, only: :index
  devise_for :users, controllers: { registrations: "registrations"}

  root 'bus_reservations#new'
end
