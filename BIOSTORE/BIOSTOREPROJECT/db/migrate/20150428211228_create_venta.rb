class CreateVenta < ActiveRecord::Migration
  def change
    create_table :venta do |t|
      t.date :fecha
      t.integer :cantidad_productos
      t.integer :empleado_id
      t.integer :cliente_id

      t.timestamps null: false
    end
  end
end
