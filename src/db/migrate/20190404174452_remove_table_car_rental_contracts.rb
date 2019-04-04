class RemoveTableCarRentalContracts < ActiveRecord::Migration[5.2]
  def change
    drop_table :car_rental_contracts
  end
end
