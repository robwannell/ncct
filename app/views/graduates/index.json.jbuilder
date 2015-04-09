json.array!(@graduates) do |graduate|
  json.extract! graduate, :id
  json.url graduate_url(graduate, format: :json)
end
