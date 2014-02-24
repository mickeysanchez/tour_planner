class ChangeMessageColumnToTextOnNotifications < ActiveRecord::Migration
  def change
    remove_column :notifications, :message
    add_column :notifications, :message, :text
  end
end
