class AddPriceToPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :price_cents
    add_column :posts, :price, :string
  end
end
