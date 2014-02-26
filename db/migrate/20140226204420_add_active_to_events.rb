class AddActiveToEvents < ActiveRecord::Migration
  def change
    add_column :events, :active, :boolean, default: true
    add_index :events, :active
  end
end
