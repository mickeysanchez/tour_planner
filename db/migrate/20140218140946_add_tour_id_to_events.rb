class AddTourIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :tour_id, :integer
  end
end
