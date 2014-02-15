class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :password_digest, null: false
      t.string :token

      t.timestamps
    end
    
    add_index :users, :email, unique: true
    add_index :users, :password_digest
    add_index :users, :token
  end
end
