class AddActiveToBandMemberships < ActiveRecord::Migration
  def change
    add_column :band_memberships, :active, :boolean, default: true
    add_index :band_memberships, :active
  end
end
