# == Schema Information
#
# Table name: drivers
#
#  id            :bigint(8)        not null, primary key
#  license_no    :string
#  class_license :string
#  date_issue    :date
#  date_expired  :date
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Driver < ApplicationRecord
end
