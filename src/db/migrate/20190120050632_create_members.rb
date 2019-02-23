# frozen_string_literal: true

class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members, &:timestamps
  end
end
