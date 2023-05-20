json.extract! ticket_list, :id, :created_at, :updated_at
json.url ticket_list_url(ticket_list, format: :json)
