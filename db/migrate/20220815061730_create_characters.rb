class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.string :imagen
      t.string :nombre
      t.integer :edad
      t.integer :peso
      t.text :historia
      t.references :pelicula, null: false, foreign_key: true

      t.timestamps
    end
  end
end
