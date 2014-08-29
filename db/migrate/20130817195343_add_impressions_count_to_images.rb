class AddImpressionsCountToImages < ActiveRecord::Migration
  def change
    remove_column :posts, :view_count
    add_column :posts, :impressions_count, :integer, default: 0

    remove_column :images, :view_count
    add_column :images, :impressions_count, :integer, default: 0
  end
end
