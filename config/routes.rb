Rails.application.routes.draw do
  get 'notifications/index'
  get 'events/index'
  get 'events/new'
  get 'events/create'
  # get 'categories/index'
  # get 'categories/new'
  # get 'categories/create'
  # get 'category/index'
  # get 'category/new'
  # get 'category/create'
  # get 'event/index'
  # get 'event/new'
  # get 'event/create'
  # get 'bookings/index'
  # get 'bookings/new'
  # get 'bookings/create'
  # get 'roles/index'
  # get 'roles/new'
  # get 'roles/create'
  # get 'cities/index'
  # get 'cities/new'
  # get 'cities/create'
  # get 'users/index'
  # get 'users/new'
  # get 'users/create'
  # get 'locations/index'
  # get 'locations/new'

  # get 'locations/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  # get "/cities", to: "cities#new"
  resources :users do
    resources :bookings do
    put 'confirm'
    put 'cancel'
    end
  end

  resources :users, :locations, :cities, :roles, :categories, :events, :bookings, :notifications
  root "homes#index"
  
  get "/bookings/show", to: "bookings#show", as: "bookings_show"
end
