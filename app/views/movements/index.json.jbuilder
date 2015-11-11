json.array!(@movements) do |movement|
  json.extract! movement, :id, :document_id, :position_id, :item_id, :amount
  json.url movement_url(movement, format: :json)
end
