class AddCantidadToProductos < ActiveRecord::Migration[5.2]
  def change
    add_column :productos, :medida, :string
  end
end
