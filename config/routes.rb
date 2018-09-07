Rails.application.routes.draw do
  resources :bus_reservations
  resources :dashboards, only: :index
  devise_for :users, controllers: { registrations: "registrations"}

  root 'bus_reservations#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
