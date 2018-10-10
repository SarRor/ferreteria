class CreateProductos < ActiveRecord::Migration[5.2]
  def change
    create_table :productos do |t|
      t.string :nombre
      t.string :imagen
      t.decimal :precio, precision: 7, scale: 2
      t.references :usuario, foreign_key: true

      t.timestamps
    end
  end
end
