json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :intro, :ingredients, :instructions, :author_id
  json.url recipe_url(recipe, format: :json)
end
