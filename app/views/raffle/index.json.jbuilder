json.array!(@raffle) do |raffle|
  json.extract! raffle, :id, :name, :date, :description
  json.url raffle_url(raffle, format: :json)
end
