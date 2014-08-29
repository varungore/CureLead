class AddVisibleToPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :visible
    add_column :posts, :visible, :boolean, default: false
  end
end
