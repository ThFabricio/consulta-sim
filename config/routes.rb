Rails.application.routes.draw do
  resources :medicos

  root "pacientes#index"
  resources :pacientes do
    resources :consults
  end

  resources :medicos

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
