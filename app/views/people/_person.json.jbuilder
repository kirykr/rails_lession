json.extract! person, :id, :name, :email, :password, :phone, :address, :created_at, :updated_at
json.url person_url(person, format: :json)
