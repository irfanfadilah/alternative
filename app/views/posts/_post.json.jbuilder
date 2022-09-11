json.extract! post, :id, :name, :website, :message, :created_at, :updated_at
json.url post_url(post, format: :json)
