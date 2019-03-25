class RentedCar < ApplicationRecord
  belongs_to :car
  belongs_to :car_rental
end
