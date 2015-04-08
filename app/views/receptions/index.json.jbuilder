json.array!(@receptions) do |reception|
  json.extract! reception, :id, :name, :email
  json.url reception_url(reception, format: :json)
end
