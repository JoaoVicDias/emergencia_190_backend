Rails.application.routes.draw do
  resources :police
  resources :emergencies
  resources :users
  resources :emergency_types
  resources :statuses
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
