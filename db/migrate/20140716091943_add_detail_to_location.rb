class AddDetailToLocation < ActiveRecord::Migration
  def change
    #add_column :locations, :address, :string
    add_column :locations, :phone_number, :string
  end
end
