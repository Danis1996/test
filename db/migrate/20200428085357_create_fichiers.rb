class CreateFichiers < ActiveRecord::Migration[6.0]
  def change
    create_table :fichiers do |t|
      t.string :titre
      t.string :contenu

      t.timestamps
    end
  end
end
