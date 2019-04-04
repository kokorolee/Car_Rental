# == Schema Information
#
# Table name: rented_cars
#
#  id            :bigint(8)        not null, primary key
#  car_id        :bigint(8)
#  car_rental_id :bigint(8)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class RentedCar < ApplicationRecord
  belongs_to :car
  belongs_to :investment
end
