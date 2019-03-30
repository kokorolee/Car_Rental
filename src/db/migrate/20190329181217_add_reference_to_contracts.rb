class AddReferenceToContracts < ActiveRecord::Migration[5.2]
  def change
    add_reference :contracts, :created_user, foreign_key: { to_table: :users }
    add_reference :contracts, :member, foreign_key: { to_table: :users }
    add_reference :contracts, :car
  end
end
