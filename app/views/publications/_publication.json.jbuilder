json.extract! publication, :id, :user_id, :class_id, :likes_number, :contents, :description, :duration, :modality, :price, :created_at, :updated_at
json.url publication_url(publication, format: :json)
