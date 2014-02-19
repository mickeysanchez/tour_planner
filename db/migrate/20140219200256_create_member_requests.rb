class CreateMemberRequests < ActiveRecord::Migration
  def change
    create_table :member_requests do |t|
      t.integer :requester_id, null: false
      t.integer :band_id, null: false

      t.timestamps
    end
    
    add_index :member_requests, :requester_id
    add_index :member_requests, :band_id
  end
end
