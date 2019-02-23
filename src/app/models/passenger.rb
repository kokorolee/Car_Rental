# == Schema Information
#
# Table name: passengers
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  dob        :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Passenger < ApplicationRecord
  belongs_to :car_rental_contract
end
