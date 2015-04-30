class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :nombre
      t.string :descripcion
      t.integer :total_empleados

      t.timestamps null: false
    end
  end
end
