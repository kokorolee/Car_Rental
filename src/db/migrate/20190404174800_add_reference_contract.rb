class AddReferenceContract < ActiveRecord::Migration[5.2]
  def change
    add_reference :contracts, :admin, foreign_key: true
  end
end
