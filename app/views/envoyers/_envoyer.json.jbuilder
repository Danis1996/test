json.extract! envoyer, :id, :user_reclamation_id, :titre, :contenu, :created_at, :updated_at
json.url envoyer_url(envoyer, format: :json)
