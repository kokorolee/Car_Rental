# == Schema Information
#
# Table name: users
#
#  id            :bigint(8)        not null, primary key
#  name          :string
#  gender        :string
#  dob           :date
#  address       :string
#  tel           :string
#  identity_no   :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  license_no    :string
#  class_license :string
#  date_issue    :date
#  date_expired  :date
#  type          :string
#

class Member < User
  has_many :investments
end
