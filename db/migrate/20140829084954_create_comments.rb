class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
	  t.integer :post_id, null: false
      t.string :comment, null: false
      t.integer :created_by, null: false
      t.timestamps
    end
  end
end
