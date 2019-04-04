# == Schema Information
#
# Table name: contracts
#
#  id              :bigint(8)        not null, primary key
#  type            :string
#  start_date      :date
#  end_date        :date
#  price           :decimal(10, 2)
#  discount        :decimal(10, 2)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  created_user_id :bigint(8)
#  member_id       :bigint(8)
#  car_id          :bigint(8)
#

class Investment < Contract

  has_many :rented_cars, dependent: :destroy
  belongs_to :admin
  # belongs_to :member
  # belongs_to :car
end
