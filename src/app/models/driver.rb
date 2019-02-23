# frozen_string_literal: true

class Driver < ApplicationRecord
  has_many :cars
  # has_many :cars, through: :car_drivers
end
