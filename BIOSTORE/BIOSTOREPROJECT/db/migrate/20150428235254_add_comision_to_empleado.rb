class AddComisionToEmpleado < ActiveRecord::Migration
  def change
    add_column :empleados, :comision, :float
  end
end
