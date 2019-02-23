# == Schema Information
#
# Table name: user_types
#
#  id         :bigint(8)        not null, primary key
#  user_type  :string
#  notes      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UserType < ApplicationRecord
  has_many :users, dependent: :restrict_with_exception
end
