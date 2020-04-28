class CreateEnvoyers < ActiveRecord::Migration[6.0]
  def change
    create_table :envoyers do |t|
      t.string :titre
      t.string :contenu
      t.belongs_to :user_reclamation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
