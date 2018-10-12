class RemoveCategoryIdFromCategoryProductos < ActiveRecord::Migration[5.2]
  def change
    remove_column :category_productos, :category_id, :integer
    add_column :category_productos, :category_id, :string
  end
end
