class AddPosterToEvents < ActiveRecord::Migration
  def change
    add_attachment :events, :poster
  end
end
