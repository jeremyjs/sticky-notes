json.array!(@roles) do |role|
  json.extract! role, :id, :name, :color_id
  json.url role_url(role, format: :json)
end
