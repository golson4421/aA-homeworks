class CreatePersons < ActiveRecord::Migration[5.2]
  def change
    create_table :persons do |t|
      t.integer :house_id, null: false
      t.string :name, null: false
    end
  end
end
