# frozen_string_literal: true

class CarRentalContract < ApplicationRecord
  has_many :cars
  belongs_to :admin
  belongs_to :customer
end
