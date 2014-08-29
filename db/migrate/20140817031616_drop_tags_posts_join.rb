class DropTagsPostsJoin < ActiveRecord::Migration
  def change
  	drop_table :tags_posts 
  end
end
