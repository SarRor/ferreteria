class CreateCategoryProductos < ActiveRecord::Migration[5.2]
  def change
    create_table :category_productos do |t|
      t.references :producto, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
