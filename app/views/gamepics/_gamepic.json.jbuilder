json.extract! gamepic, :id, :name, :url, :game_id, :created_at, :updated_at
json.url gamepic_url(gamepic, format: :json)
