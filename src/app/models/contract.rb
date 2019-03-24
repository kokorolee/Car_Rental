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
