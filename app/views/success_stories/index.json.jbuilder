json.array!(@success_stories) do |success_story|
  json.extract! success_story, :id, :name, :title, :content, :ranking
  json.url success_story_url(success_story, format: :json)
end
