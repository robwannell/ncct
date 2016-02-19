json.array!(@raffleitems) do |raffleitem|
  json.extract! raffleitem, :id, :name, :ticket, :raffle_id
  json.url raffleitem_url(raffleitem, format: :json)
end
