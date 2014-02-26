class ChangeChangesToDifferences < ActiveRecord::Migration
  def change
    remove_column :notifications, :changes
    add_column :notifications, :differences, :text, default: ""
  end
end
