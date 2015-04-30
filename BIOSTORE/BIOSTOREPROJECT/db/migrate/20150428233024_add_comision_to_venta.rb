class AddComisionToVenta < ActiveRecord::Migration
  def change
    add_column :venta, :comision, :float
  end
end
