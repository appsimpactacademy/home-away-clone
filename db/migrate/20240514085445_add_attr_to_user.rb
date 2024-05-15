class AddAttrToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :profile_picture, :string
    add_column :users, :phone_number, :string
    add_column :users, :biography, :text
    add_column :users, :role, :string
  end
end
