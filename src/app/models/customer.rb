# == Schema Information
#
# Table name: customers
#
#  id          :bigint(8)        not null, primary key
#  name        :string
#  gender      :boolean
#  dob         :date
#  address     :string
#  tel         :string
#  identity_no :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Customer < ApplicationRecord
  has_many :car_rental_contracts, dependent: :destroy
end
