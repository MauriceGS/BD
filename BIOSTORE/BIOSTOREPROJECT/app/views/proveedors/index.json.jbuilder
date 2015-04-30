json.array!(@proveedors) do |proveedor|
  json.extract! proveedor, :id, :nombre, :direccion, :email
  json.url proveedor_url(proveedor, format: :json)
end
