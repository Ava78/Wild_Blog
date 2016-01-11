class RemoveIndexFromCategories < ActiveRecord::Migration
  def change
    remove_column :categories, :index, :string
    remove_column :categories, :new, :string
    remove_column :categories, :show, :string
    remove_column :categories, :update, :string
    remove_column :categories, :destroy, :string
  end
end
