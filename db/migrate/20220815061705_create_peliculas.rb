class CreatePeliculas < ActiveRecord::Migration[7.0]
  def change
    create_table :peliculas do |t|
      t.string :imagen
      t.string :titulo
      t.integer :calificacion
      t.references :genero, null: false, foreign_key: true

      t.timestamps
    end
  end
end
