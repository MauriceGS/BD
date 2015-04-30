json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nombre, :mail
  json.url cliente_url(cliente, format: :json)
end
