json.extract! members_client, :id, :name, :telephone, :birth_date, :mail, :facebook, :total_dives, :created_at, :updated_at
json.url members_client_url(members_client, format: :json)