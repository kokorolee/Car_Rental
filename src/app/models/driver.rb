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

class Driver < User
  validates :license_no, :class_license, presence: true
  enum class_license: %i[A1 A2 A3 A4 B1 B2 C E]
end
