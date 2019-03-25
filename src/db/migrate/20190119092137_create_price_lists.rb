class CreatePriceLists < ActiveRecord::Migration[5.2]
  def change
    create_table :price_lists do |t|
      t.string :name
      t.decimal :price

      t.timestamps
    end
  end
end
