class UpdateDecimalField < ActiveRecord::Migration[5.2]
  def change
    remove_column :cars, :rental_price, :decimal, precision: 5, scale: 2
    remove_column :cars, :origin_price, :decimal, precision: 5, scale: 2

    add_column :cars, :rental_price, :decimal, precision: 20, scale: 2
  end
end
