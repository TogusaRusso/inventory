json.array!(@positions) do |position|
  json.extract! position, :id, :name, :code, :serial
  json.url position_url(position, format: :json)
end
