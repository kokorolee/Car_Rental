json.extract! customer, :id, :name, :gender, :dob, :address, :tel, :identity_no, :created_at, :updated_at
json.url customer_url(customer, format: :json)
