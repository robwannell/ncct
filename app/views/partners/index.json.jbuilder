json.array!(@partners) do |partner|
  json.extract! partner, :id, :title, :body
  json.url partner_url(partner, format: :json)
end
