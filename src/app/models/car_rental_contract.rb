# == Schema Information
#
# Table name: car_rental_contracts
#
#  id          :bigint(8)        not null, primary key
#  start_date  :date
#  end_date    :date
#  rent_driver :boolean
#  price       :decimal(, )
#  unit_price  :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class CarRentalContract < ApplicationRecord
  has_many :cars, dependent: :restrict_with_exception
  belongs_to :admin
  belongs_to :customer
end
