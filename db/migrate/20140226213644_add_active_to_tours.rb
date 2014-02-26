class AddActiveToTours < ActiveRecord::Migration
  def change
    add_column :tours, :active, :boolean, default: true
    add_index :tours, :active
  end
end
