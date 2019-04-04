class RemoveTableInvestmentContracts < ActiveRecord::Migration[5.2]
  def change
    drop_table :investment_contracts
  end
end
