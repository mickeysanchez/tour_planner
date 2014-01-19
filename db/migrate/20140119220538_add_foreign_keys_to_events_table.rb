class AddForeignKeysToEventsTable < ActiveRecord::Migration
  def change
    add_column :events, :band_id, :integer
    add_column :events, :venue_id, :integer
    add_column :events, :date, :datetime
    
    add_index :events, :band_id
    add_index :events, :venue_id
    add_index :events, :date
  end
end
