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

class Contract < ApplicationRecord

  validates :start_date, :end_date, :price, :type, presence: true
  validate :in_date_range?

  def self.type
    %w(car_rental investment)
  end


  def in_date_range?
    return errors.add(:start_date, 'cannot smaller than time current') if start_date < Date.today - 1
    return errors.add(:start_date, 'cannot greater than end at') if start_date > end_date

    return errors.add(:end_date, 'cannot smaller than time current') if end_date < Date.today - 1
  end

end
