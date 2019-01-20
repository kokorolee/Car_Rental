class CreateInvestmentContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :investment_contracts do |t|
      t.date :start_date
      t.date :end_date
      t.float :discount

      t.timestamps
    end
  end
end
