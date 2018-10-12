class AddIndexToCategoryId < ActiveRecord::Migration[5.2]
  def change
    add_index :category_productos, :category_id
  end
end
