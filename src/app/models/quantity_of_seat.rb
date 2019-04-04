# == Schema Information
#
# Table name: quantity_of_seats
#
#  id               :bigint(8)        not null, primary key
#  quantity_of_seat :decimal(2, )
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class QuantityOfSeat < ApplicationRecord
  has_many :cars
end
