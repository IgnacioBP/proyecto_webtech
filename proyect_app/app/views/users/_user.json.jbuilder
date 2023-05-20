json.extract! user, :id, :mail, :name, :last_name, :phone, :password, :created_at, :updated_at
json.url user_url(user, format: :json)
