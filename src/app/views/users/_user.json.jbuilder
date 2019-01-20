json.extract! user, :id, :name, :gender, :dob, :address, :tel, :identity_no, :created_at, :updated_at
json.url user_url(user, format: :json)
