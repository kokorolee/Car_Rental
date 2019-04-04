class UpdateContractPrice < ActiveRecord::Migration[5.2]
  def change
    remove_column :contracts, :price, :decimal, precision: 10, scale: 2
    add_column :contracts, :price, :decimal, precision: 20, scale: 2
  end
end
