class AddReferenceCarModelToCarBrand < ActiveRecord::Migration[5.2]
  def change
    add_reference :car_models, :car_brand, index: true
  end
end
