json.extract! card, :id, :title, :text, :created_at, :updated_at
json.url card_url(card, format: :json)
