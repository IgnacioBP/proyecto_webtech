Rails.application.routes.draw do
  resources :ticket_lists

  resources :users, :param => :mail

  root "tickets#index"
  get '/users/:mail', to: 'users#show', params: :mail, constraints: { mail: /.*/ }
  resources :tickets
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
