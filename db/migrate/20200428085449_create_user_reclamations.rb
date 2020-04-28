class CreateUserReclamations < ActiveRecord::Migration[6.0]
  def change
    create_table :user_reclamations do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :reclamation, null: false, foreign_key: true
      t.string :date
      t.boolean :vue
      t.boolean :resolu

      t.timestamps
    end
  end
end
