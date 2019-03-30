class RentedCar < ApplicationRecord
  belongs_to :car
  belongs_to :investment
end
