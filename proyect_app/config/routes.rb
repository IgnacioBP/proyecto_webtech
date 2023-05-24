Rails.application.routes.draw do
 # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  
  
  root "pages#home"

  resources :all_users

  resources :users, :param => :mail do
    resources :ticket_lists do
      resources :tickets
    end
  end
  resources :ticket_lists
  
  
  resources :executives , :param => :mail do
    resources :assign_tickets do
      resources :tickets do

        resources :tag_lists do
          resources :tags
        end
        resources :chats do
          resources :comments
        end
      end
    end
  end
  resources :assign_tickets


  resources :supervisors, :param => :mail do
    resources :tickets do

      resources :tag_lists do
        resources :tags
      end
      resources :chats do
        resources :comments
      end
    end
    resources :performance_reports do
      resources :executive_reports
    end
  end

  resources :administrators, :param => :mail do
    resources :tickets do

      resources :tag_lists do
        resources :tags
      end
      resources :chats do
        resources :comments
      end
    end
    resources :performance_reports do
      resources :executive_reports
    end
  end

  get '/administrators/:administrator_mail/ticket_reports', to: 'tickets#ticket_report' , as: 'administrator_ticket_report'
  get '/administrators/:administrator_mail/overdue_reports', to: 'tickets#overdue_report', as: 'administrator_overdue_report'
  get '/supervisors/:supervisor_mail/ticket_reports', to: 'tickets#ticket_report', as: 'supervisor_ticket_report'
  get '/supervisors/:supervisor_mail/overdue_reports', to: 'tickets#overdue_report', as: 'supervisor_overdue_report'

  resources :tickets
  resources :comments
  resources :chats
  resources :tags
  resources :tag_lists
  resources :performance_reports
  resources :executive_reports

end
