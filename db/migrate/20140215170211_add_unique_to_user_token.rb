class AddUniqueToUserToken < ActiveRecord::Migration
  def change
    remove_index :users, :token
    add_index :users, :token, unique: true
  end
end
