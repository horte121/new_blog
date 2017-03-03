json.extract! new_blog, :id, :title, :body, :created_at, :updated_at
json.url new_blog_url(new_blog, format: :json)
