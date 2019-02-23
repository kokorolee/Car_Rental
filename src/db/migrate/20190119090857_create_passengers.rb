# frozen_string_literal: true

class CreatePassengers < ActiveRecord::Migration[5.2]
  def change
    create_table :passengers do |t|
      t.string :name
      t.date :dob

      t.timestamps
    end
  end
end
