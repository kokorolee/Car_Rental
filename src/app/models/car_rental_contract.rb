class CarRentalContract < ApplicationRecord
  validates_uniqueness_of :car_id, scope: [:start_date]
  validates_uniqueness_of :car_id, scope: [:end_date]
end
