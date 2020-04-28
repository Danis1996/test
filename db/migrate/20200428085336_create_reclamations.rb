class CreateReclamations < ActiveRecord::Migration[6.0]
  def change
    create_table :reclamations do |t|
      t.integer :durre
      t.string :titre
      t.string :couleur

      t.timestamps
    end
  end
end
