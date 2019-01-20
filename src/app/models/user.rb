# == Schema Information
#
# Table name: users
#
#  id          :bigint(8)        not null, primary key
#  name        :string
#  gender      :string
#  dob         :date
#  address     :string
#  tel         :string
#  identity_no :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class User < ApplicationRecord
end
