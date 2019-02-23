# frozen_string_literal: true

class CreateCarRentalContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :car_rental_contracts do |t|
      t.date :start_date
      t.date :end_date
      t.boolean :rent_driver
      t.decimal :price
      t.string :unit_price

      t.timestamps
    end
  end
end
