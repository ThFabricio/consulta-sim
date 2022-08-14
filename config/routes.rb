Rails.application.routes.draw do
  resources :medicos
  resources :pacientes

  root "medicos#index"
  resources :pacientes
  resources :medicos

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
