# == Schema Information
#
# Table name: car_models
#
#  id               :bigint(8)        not null, primary key
#  name             :string(20)
#  quantity_of_seat :integer
#  note             :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  car_brand_id     :bigint(8)
#

class CarModel < ApplicationRecord
  belongs_to :car_brand
  has_many :cars, dependent: :destroy
  validates :name, length: { maximum: 20 }, presence: true
  validates :quantity_of_seat, presence: true
  validates :quantity_of_seat, numericality: { less_than_or_equal_to: 45, greater_than_or_equal_to: 2 }
  enum quantity_of_seat: %i[2 4 5 7 9 16 25 45]
end
