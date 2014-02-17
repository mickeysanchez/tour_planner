class AddAdminToBandMemberships < ActiveRecord::Migration
  def change
    add_column :band_memberships, :admin, :boolean, default: false, null: false
  end
end
