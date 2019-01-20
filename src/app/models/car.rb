# == Schema Information
#
# Table name: cars
#
#  id               :bigint(8)        not null, primary key
#  car_number_plate :string(15)
#  origin_price     :decimal(, )
#  status           :string
#  rental_price     :decimal(, )
#  rent_status      :boolean
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Car < ApplicationRecord
  belongs_to :car_model
  has_many :car_rental_contracts
  has_many :drivers

  validates :car_number_plate, length: { maximum: 15 }, presence: true
  validates :origin_price,  presence: true
  validates :status,  presence: true
  validates :rental_price,  presence: true
  validates :rent_status,  presence: true
end
