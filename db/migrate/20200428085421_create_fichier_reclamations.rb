class CreateFichierReclamations < ActiveRecord::Migration[6.0]
  def change
    create_table :fichier_reclamations do |t|
      t.belongs_to :reclamation, null: false, foreign_key: true
      t.belongs_to :fichier, null: false, foreign_key: true

      t.timestamps
    end
  end
end
