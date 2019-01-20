# == Schema Information
#
# Table name: investment_contracts
#
#  id         :bigint(8)        not null, primary key
#  start_date :date
#  end_date   :date
#  discount   :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class InvestmentContract < ApplicationRecord
end
