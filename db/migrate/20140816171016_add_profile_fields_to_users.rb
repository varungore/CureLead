class AddProfileFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :education, :string
    add_column :users, :speciality, :string
    add_column :users, :address, :string
    add_column :users, :contact, :string
    add_column :users, :description, :text
    add_column :users, :oneliner, :string
  end
end
