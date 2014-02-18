class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.string :name, null: false

      t.timestamps
    end
    
    add_index :tours, :name
  end
end
