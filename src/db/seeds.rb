10.times do
  CarBrand.create(
    code: Faker::Name.initials(5),
    name: Faker::Name.name
  )
end

CarBrand.all.each do |car_brand|
  10.times do
    seat = %w[2 4 5 7 9 16 25 45]
    car_brand.car_models.create(
      name: Faker::Name.name,
      quantity_of_seat: seat[rand(45) / 5]
    )
  end
end

CarModel.all.each do |car_model|
  10.times do
    status = [:rented, :not_rented]
    car_model.cars.create!(
       car_number_plate: Faker::Number.number(10),
       origin_price: Faker::Number.number(10),
       status: Faker::Commerce.department,
       rental_price: Faker::Number.number(10),
       rent_status: status[rand(0..1)]
    )
  end
end

20.times do
  type = %w(member customer passenger driver user_admin)
  gender = [:male, :female]
  d = Driver.new(
    name: Faker::Name.name,
    dob: Date.today - rand(18..50).years,
    gender: gender[rand(0..1)],
    address: Faker::Address.full_address,
    tel: Faker::PhoneNumber.phone_number,
    identity_no: Faker::Code.asin,
    license_no: Faker::Code.asin,
    date_issue: Date.today - rand(4..5).years,
    date_expired: Date.today - rand(2..3).years
  )
  d.save(validate: false)
  c = Customer.new(
    name: Faker::Name.name,
    dob: Date.today - rand(18..50).years,
    gender: gender[rand(0..1)],
    address: Faker::Address.full_address,
    tel: Faker::PhoneNumber.phone_number,
    identity_no: Faker::Code.asin,
  )
  c.save(validate: false)

  pa = Customer.new(
    name: Faker::Name.name,
    dob: Date.today - rand(18..50).years,
    gender: gender[rand(0..1)],
    address: Faker::Address.full_address,
    tel: Faker::PhoneNumber.phone_number,
    identity_no: Faker::Code.asin,
  )
  pa.save(validate: false)

  mem = Customer.new(
    name: Faker::Name.name,
    dob: Date.today - rand(18..50).years,
    gender: gender[rand(0..1)],
    address: Faker::Address.full_address,
    tel: Faker::PhoneNumber.phone_number,
    identity_no: Faker::Code.asin,
  )
  mem.save(validate: false)
end
