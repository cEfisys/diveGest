json.extract! boat_document, :id, :start_date, :end_date, :notes, :created_at, :updated_at
json.url boat_document_url(boat_document, format: :json)