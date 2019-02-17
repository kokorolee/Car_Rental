# == Schema Information
#
# Table name: car_models
#
#  id               :bigint(8)        not null, primary key
#  name             :string(20)
#  quantity_of_seat :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class CarModel < ApplicationRecord
  belongs_to :car_brand
  has_many :cars
  validates :name, length: { maximum: 20 }, presence: true
  validates :quantity_of_seat,  presence: true
  validates_numericality_of :quantity_of_seat, less_than_or_equal_to: 45, greater_than_or_equal_to: 2
end
