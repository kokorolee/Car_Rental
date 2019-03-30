# == Schema Information
#
# Table name: car_brands
#
#  id         :bigint(8)        not null, primary key
#  code       :string(5)
#  name       :string(30)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CarBrand < ApplicationRecord
  has_many :car_models, dependent: :destroy
  # has_many :cars, through :car_models
  validates :code, presence: true, length: { in: 0..5 }
  validates :name, presence: true
end
