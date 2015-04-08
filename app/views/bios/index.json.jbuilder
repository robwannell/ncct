json.array!(@bios) do |bio|
  json.extract! bio, :id, :name, :position, :story, :rank
  json.url bio_url(bio, format: :json)
end
