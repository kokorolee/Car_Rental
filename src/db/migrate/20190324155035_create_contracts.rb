class CreateContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :contracts do |t|
      t.string :type
      t.date :start_date
      t.date :end_date
      t.decimal :price, precision: 10, scale: 2
      t.decimal :discount, precision: 10, scale: 2

      t.timestamps
    end
  end
end
