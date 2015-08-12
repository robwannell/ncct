json.array!(@boardmembers) do |boardmember|
  json.extract! boardmember, :id, :name, :title, :body, :rank
  json.url boardmember_url(boardmember, format: :json)
end
