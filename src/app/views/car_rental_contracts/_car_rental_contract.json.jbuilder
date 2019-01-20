json.extract! car_rental_contract, :id, :start_date, :end_date, :rent_driver, :price, :unit_price, :created_at, :updated_at
json.url car_rental_contract_url(car_rental_contract, format: :json)
