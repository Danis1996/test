json.extract! fichier, :id, :titre, :contenu, :created_at, :updated_at
json.url fichier_url(fichier, format: :json)
