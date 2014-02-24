class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.string :message
      t.integer :notifiable_id
      t.string :notifiable_type

      t.timestamps
    end
    
    add_index :notifications, :notifiable_id
  end
end
