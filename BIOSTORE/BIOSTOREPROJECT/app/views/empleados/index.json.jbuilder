json.array!(@empleados) do |empleado|
  json.extract! empleado, :id, :nombre, :direccion, :email, :sueldo, :area_id
  json.url empleado_url(empleado, format: :json)
end
