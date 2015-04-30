json.array!(@productos) do |producto|
  json.extract! producto, :id, :nombre, :proveedor_id, :marca, :cantidad, :tipo, :precio
  json.url producto_url(producto, format: :json)
end
