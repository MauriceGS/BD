class AddTotalToVenta < ActiveRecord::Migration
  def change
    add_column :venta, :total, :float
  end
end
