json.extract! user_reclamation, :id, :user_id, :reclamation_id, :date, :vue, :resolu, :created_at, :updated_at
json.url user_reclamation_url(user_reclamation, format: :json)
