class AddChangerIdToNotifications < ActiveRecord::Migration
  def change
    add_column :notifications, :changer_id, :integer
  end
end
