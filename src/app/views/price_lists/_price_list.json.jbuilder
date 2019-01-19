json.extract! price_list, :id, :name, :price, :created_at, :updated_at
json.url price_list_url(price_list, format: :json)
