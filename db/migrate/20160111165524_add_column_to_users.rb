class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :email, :string
    add_column :users, :encrypted_password, :string
    add_column :users, :nom, :string
    add_column :users, :prenom, :string
    add_column :users, :user_id, :integer
    add_column :users, :avatar, :string
  end
end
