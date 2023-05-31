Rails.application.routes.draw do
  get 'apostas/create'
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "home#index"

  post '/apostas', to:"apostas#create"
  get '/apostas', to: 'apostas#new'
end
