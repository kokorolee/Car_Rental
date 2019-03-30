class CreateQuantityOfSeats < ActiveRecord::Migration[5.2]
  def change
    create_table :quantity_of_seats do |t|
      t.decimal :quantity_of_seat, precision: 2

      t.timestamps
    end
  end
end
