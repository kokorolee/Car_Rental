# frozen_string_literal: true

class User < ApplicationRecord
  belongs_to :user_type, optional: true
  has_many :drivers
  has_many :members
end
