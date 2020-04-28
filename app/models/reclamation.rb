class Reclamation < ApplicationRecord
	has_many :user_reclamations
	has_many :fichier_reclamations
end
