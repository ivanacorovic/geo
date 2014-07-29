class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :fax
      t.string :email
      t.string :website
      t.string :pib

      t.timestamps
    end
  end
end
