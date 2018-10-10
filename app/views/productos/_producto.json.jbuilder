json.extract! producto, :id, :nombre, :imagen, :precio, :usuario_id, :created_at, :updated_at
json.url producto_url(producto, format: :json)
