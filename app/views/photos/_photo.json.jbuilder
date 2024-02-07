json.extract! photo, :id, :caption, :like, :dislike, :created_at, :updated_at
json.url photo_url(photo, format: :json)
