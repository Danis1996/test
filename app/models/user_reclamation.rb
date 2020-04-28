class UserReclamation < ApplicationRecord
  belongs_to :user
  belongs_to :reclamation
  has_many :envoyers
end
