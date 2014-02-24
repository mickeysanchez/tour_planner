class AddUserIdToNotifications < ActiveRecord::Migration
  def change
    add_column :notifications, :user_id, :integer
    add_index :notifications, :user_id
  end
end
