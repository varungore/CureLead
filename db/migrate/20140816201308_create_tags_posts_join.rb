class CreateTagsPostsJoin < ActiveRecord::Migration
  def change
    create_table :tags_posts, id: false do |t|
    	t.belongs_to :tag
    	t.belongs_to :post
    end
  end
end
