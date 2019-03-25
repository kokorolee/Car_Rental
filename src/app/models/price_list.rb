# == Schema Information
#
# Table name: price_lists
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  price      :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PriceList < ApplicationRecord
end
