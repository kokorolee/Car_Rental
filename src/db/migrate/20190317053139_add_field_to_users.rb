class AddFieldToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :license_no, :string
    add_column :users, :class_license, :string
    add_column :users, :date_issue, :date
    add_column :users, :date_expired, :date
    add_column :users, :type, :string
  end
end
