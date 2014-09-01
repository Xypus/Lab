json.array!(@protocols) do |protocol|
  json.extract! protocol, :id, :title, :content
  json.url protocol_url(protocol, format: :json)
end
