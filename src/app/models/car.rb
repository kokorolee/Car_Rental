# == Schema Information
#
# Table name: cars
#
#  id               :bigint(8)        not null, primary key
#  car_number_plate :string(15)
#  origin_price     :decimal(5, 2)
#  status           :string
#  rental_price     :decimal(5, 2)
#  rent_status      :boolean          default(FALSE)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Car < ApplicationRecord
  belongs_to :car_model
  has_many :rented_cars, dependent: :destroy
  has_many :drivers, dependent: :restrict_with_exception

  validates :car_number_plate, length: { maximum: 15 }, presence: true
  validates :origin_price, presence: true
  validates :status, presence: true
  validates :rental_price, presence: true
  validates :rent_status, presence: true
  enum rent_status: [ :rented, :not_rented ]
end
