class CreateUserTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :user_types do |t|
      t.string :user_type
      t.string :notes

      t.timestamps
    end
  end
end
