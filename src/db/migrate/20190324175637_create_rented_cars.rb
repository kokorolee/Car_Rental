class CreateRentedCars < ActiveRecord::Migration[5.2]
  def change
    create_table :rented_cars do |t|
      t.belongs_to :car
      t.belongs_to :car_rental
      
      t.timestamps
    end
  end
end
