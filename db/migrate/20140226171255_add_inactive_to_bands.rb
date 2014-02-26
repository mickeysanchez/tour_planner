class AddInactiveToBands < ActiveRecord::Migration
  def change
    add_column :bands, :active, :boolean, default: true
    add_index :bands, :active
  end
end
