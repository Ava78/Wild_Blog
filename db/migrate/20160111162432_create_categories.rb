class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :index
      t.string :new
      t.string :show
      t.string :update
      t.string :destroy

      t.timestamps null: false
    end
  end
end
