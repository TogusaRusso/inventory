json.array!(@documents) do |document|
  json.extract! document, :id, :person_id, :person_id
  json.url document_url(document, format: :json)
end
