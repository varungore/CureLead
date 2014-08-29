class AddCounterCacheToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :images_count, :integer, default: 0
    add_column :posts, :view_count, :integer, default: 0
  end
end
