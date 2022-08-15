Rails.application.routes.draw do
  resources :medicos
  resources :pacientes
  resources :homepage

  root "homepage#index"


  resources :pacientes do
    resources :consults
  end

  resources :medicos do
    resources :consults
  end


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
