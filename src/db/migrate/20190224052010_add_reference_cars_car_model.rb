class AddReferenceCarsCarModel < ActiveRecord::Migration[5.2]
  def change
    add_reference :cars, :car_model, index: true
  end
end
