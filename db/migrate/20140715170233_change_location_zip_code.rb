class ChangeLocationZipCode < ActiveRecord::Migration
  def change
    reversible do |dir|
      change_table :locations do |t|
        dir.up   { t.change :postal_code, :integer }
        dir.down { t.change :postal_code, :string }
      end
    end
  end
end
