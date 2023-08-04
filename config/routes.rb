Rails.application.routes.draw do
  # get 'people/index'
  get "/people", to: "people#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "people#index"
  resources :people
end
