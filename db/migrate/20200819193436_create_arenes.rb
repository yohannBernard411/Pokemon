class CreateArenes < ActiveRecord::Migration[6.0]
  def change
    create_table :arenes do |t|
      t.string :name
      t.string :dispo
      t.integer :joueur1_id
      t.integer :joueur2_id

      t.timestamps
    end
  end
end
