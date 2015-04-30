json.array!(@areas) do |area|
  json.extract! area, :id, :nombre, :descripcion, :total_empleados
  json.url area_url(area, format: :json)
end
