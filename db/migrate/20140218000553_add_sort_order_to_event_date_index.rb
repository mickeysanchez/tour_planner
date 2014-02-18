class AddSortOrderToEventDateIndex < ActiveRecord::Migration
  def change
    remove_index :events, :date
    add_index :events, :date, order: { date: :asc }
  end
end
