class TableCategories < ActiveRecord::Migration
  def change
    create_table :categories do |c|
    	t.integer :category_id
    	t.string :title
    end
  end
end
