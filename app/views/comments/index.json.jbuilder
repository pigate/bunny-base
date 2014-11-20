json.array!(@comments) do |comment|
  json.extract! comment, :id, :author_id, :comment_type, :text
  json.url comment_url(comment, format: :json)
end
