# frozen_string_literal: true

class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :car_number_plate, limit: 15
      t.decimal :origin_price, precision: 5, scale: 2
      t.string :status
      t.decimal :rental_price, precision: 5, scale: 2
      t.boolean :rent_status, default: false

      t.timestamps
    end
  end
end
