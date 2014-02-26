class AddAndDropFromMigrations < ActiveRecord::Migration
  def change
    remove_column :notifications, :message
    add_column :notifications, :notification_type, :string, null: false
    add_column :notifications, :changes, :text, default: ""
  end
end
