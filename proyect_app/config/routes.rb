Rails.application.routes.draw do
 
  resources :performance_reports
  resources :executive_reports
  resources :comments
  resources :chats
  resources :tags
  resources :tag_lists
  resources :administrators, :param => :mail
  resources :supervisors, :param => :mail
  resources :assign_tickets
  resources :executives , :param => :mail
  resources :all_users
  resources :ticket_lists

  resources :users, :param => :mail

  root "pages#home"
  resources :tickets
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
