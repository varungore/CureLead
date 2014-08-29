class AddViewCountToImages < ActiveRecord::Migration
  def change
    add_column :images, :view_count, :integer, default: 0
  end
end
