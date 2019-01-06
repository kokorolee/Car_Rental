class CreateCarModels < ActiveRecord::Migration[5.2]
  def change
    create_table :car_models do |t|
      t.string :name, limit: 20
      t.integer :quantity_of_seat

      t.timestamps
    end
  end
end
