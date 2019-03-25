class CarRental < Contract
  has_many :rented_cars, dependent: :restrict_with_exception
  has_many :car, through: :rented_cars

  belongs_to :admin
  belongs_to :customer
end
