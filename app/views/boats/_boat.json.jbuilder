json.extract! boat, :id, :name, :mmsi, :horse_power, :seats, :created_at, :updated_at
json.url boat_url(boat, format: :json)