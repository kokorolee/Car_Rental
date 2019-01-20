class CarRentalContract < ApplicationRecord
  belong_to :car
  belong_to :user
  belong_to :customer
end
