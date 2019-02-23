# frozen_string_literal: true

class InvestmentContract < ApplicationRecord
  belongs_to :admin
  belongs_to :car
  belongs_to :member
end
