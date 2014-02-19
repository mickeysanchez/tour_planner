class AddApproveDenyToMemberRequests < ActiveRecord::Migration
  def change
    add_column :member_requests, :status, :string, default: "pending", null: false
  end
end
