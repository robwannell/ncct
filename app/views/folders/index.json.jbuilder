json.array!(@folders) do |folder|
  json.extract! folder, :id, :description, :ranking
  json.url folder_url(folder, format: :json)
end
