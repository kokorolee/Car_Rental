class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name
      t.boolean :gender
      t.date :dob
      t.string :address
      t.string :tel
      t.string :identity_no

      t.timestamps
    end
  end
end
