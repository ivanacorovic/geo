class ChangeLocation < ActiveRecord::Migration
  def change
    reversible do |dir|
      change_table :locations do |t|
        dir.up   { t.change :postal_code, :string }
        dir.down { t.change :postal_code, :integer }
      end
    end
  end
end


