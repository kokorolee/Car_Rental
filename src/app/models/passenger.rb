# frozen_string_literal: true

class Passenger < ApplicationRecord
  belongs_to :car_rental_contract
end
