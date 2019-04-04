# == Schema Information
#
# Table name: cars
#
#  id               :bigint(8)        not null, primary key
#  car_number_plate :string(15)
#  status           :string
#  rent_status      :boolean          default(NULL)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  car_model_id     :bigint(8)
#  origin_price     :decimal(20, 2)
#  rental_price     :decimal(20, 2)
#

class Car < ApplicationRecord
  belongs_to :car_model
  has_many :rented_cars, dependent: :destroy
  has_many :drivers

  validates :car_number_plate, length: { maximum: 15 }
  validates :status, :rental_price, :rent_status, :car_number_plate, presence: true
  validates :rental_price, length: { in: 0..20 }
  enum rent_status: [ :rented, :not_rented ]

end
