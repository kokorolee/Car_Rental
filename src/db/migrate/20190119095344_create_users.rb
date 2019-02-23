class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :gender
      t.date :dob
      t.string :address
      t.string :tel
      t.string :identity_no

      t.timestamps
    end
  end
end
