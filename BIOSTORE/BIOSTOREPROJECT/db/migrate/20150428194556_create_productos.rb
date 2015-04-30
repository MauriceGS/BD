class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :nombre
      t.integer :proveedor_id
      t.string :marca
      t.integer :cantidad
      t.integer :tipo
      t.float :precio

      t.timestamps null: false
    end
  end
end
