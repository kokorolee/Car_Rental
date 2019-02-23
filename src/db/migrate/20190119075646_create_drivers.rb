class CreateDrivers < ActiveRecord::Migration[5.2]
  def change
    create_table :drivers do |t|
      t.string :license_no
      t.string :class_license
      t.date :date_issue
      t.date :date_expired

      t.timestamps
    end
  end
end
