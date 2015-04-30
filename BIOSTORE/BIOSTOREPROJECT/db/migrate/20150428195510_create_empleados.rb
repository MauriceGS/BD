class CreateEmpleados < ActiveRecord::Migration
  def change
    create_table :empleados do |t|
      t.string :nombre
      t.string :direccion
      t.string :email
      t.float :sueldo
      t.integer :area_id

      t.timestamps null: false
    end
  end
end
