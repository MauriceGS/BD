class AddProveedorIdToArea < ActiveRecord::Migration
  def change
    add_column :areas, :proveedor_id, :integer
  end
end
