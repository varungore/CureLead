class CreateSubComments < ActiveRecord::Migration
  def change
    create_table :sub_comments do |t|
	  t.integer :post_id
	  t.integer :parent_comment_id
      t.string :body
      t.integer :created_by
      t.timestamps
    end
  end
end
