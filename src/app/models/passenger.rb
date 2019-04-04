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

class Passenger < User
  validate :in_allow_age_rage?
  def in_allow_age_rage?
    return errors.add(:dob, 'Can\'t be over 75 years old') if dob.year < Date.today.year - 75
  end
end
