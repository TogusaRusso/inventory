json.array!(@items) do |item|
  json.extract! item, :id, :serial, :comment, :position_id
  json.url item_url(item, format: :json)
end
