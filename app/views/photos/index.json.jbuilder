json.array!(@photos) do |photo|
  json.extract! photo, :id, :title, :album_id
  json.url photo_url(photo, format: :json)
end
