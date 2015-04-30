json.array!(@venta) do |ventum|
  json.extract! ventum, :id, :fecha, :cantidad_productos, :empleado_id, :cliente_id
  json.url ventum_url(ventum, format: :json)
end
