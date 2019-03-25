class CreateCarBrands < ActiveRecord::Migration[5.2]
  def change
    create_table :car_brands do |t|
      t.string :code, limit: 5
      t.string :name, limit: 30

      t.timestamps
    end
  end
end
