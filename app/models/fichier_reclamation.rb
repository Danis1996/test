class FichierReclamation < ApplicationRecord
  belongs_to :reclamation
  belongs_to :fichier
end
