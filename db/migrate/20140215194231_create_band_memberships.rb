class CreateBandMemberships < ActiveRecord::Migration
  def change
    create_table :band_memberships do |t|
      t.integer :member_id, null: false
      t.integer :band_id, null: false
      t.string :role

      t.timestamps
    end
    
    add_index :band_memberships, :member_id
    add_index :band_memberships, :band_id
    add_index :band_memberships, [:band_id, :member_id], unique: true
  end
end
