json.array!(@blogs) do |blog|
  json.extract! blog, :id, :user_id, :title, :body, :publish
  json.url blog_url(blog, format: :json)
end
