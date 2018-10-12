class AddIndexToCategoryId < ActiveRecord::Migration[5.2]
  def change
    add_index :category_productos, :category_id
    add_column :categories, :di, :string
  end
end
