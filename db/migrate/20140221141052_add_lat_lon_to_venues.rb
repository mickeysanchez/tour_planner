class AddLatLonToVenues < ActiveRecord::Migration
  def change
    add_column :venues, :lat, :float
    add_column :venues, :lon, :float
    add_index :venues, :lat
    add_index :venues, :lon
  end
end
