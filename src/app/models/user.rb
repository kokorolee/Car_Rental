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

class User < ApplicationRecord
  validates :name, :gender, :dob, :address, :tel, :identity_no, presence: true
  validates :name, length: { maximum: Constant::NAME_LENGTH }
  validates :address, length: { maximum: Constant::ADDR_LENGTH }
  validates :tel, :identity_no, length: { maximum: Constant::TEL_ID_LENGTH }
  validates :tel, format: { with: Constant::REX_PHONE }
  validate :in_allow_age_rage?

  enum gender: [:male, :female]
  def self.type
    %w(member customer passenger driver user_admin)
  end

  def in_allow_age_rage?
    # return errors.add(:dob, 'Can\'t be under 18 years old') if dob.year > Date.today.year - 17
    return errors.add(:dob, 'Can\'t be over 75 years old') if dob.year < Date.today.year - 74
  end
end
