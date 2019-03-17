class DropInheritanceUsersTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :user_types do |t|
      t.string :user_type
      t.string :notes

      t.timestamps
    end

    drop_table :customers do |t|
      t.string :name
      t.boolean :gender
      t.date :dob
      t.string :address
      t.string :tel
      t.string :identity_no

      t.timestamps
    end

    drop_table :members, &:timestamps
    drop_table :passengers do |t|
      t.string :name
      t.date :dob

      t.timestamps
    end

  end
end
