class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :street_line_1
      t.string :street_line_2
      t.string :city
      t.string :state
      t.integer :postal_code

      t.timestamps
    end
  end
end
