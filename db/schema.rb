# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_08_15_061730) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: :cascade do |t|
    t.string "imagen"
    t.string "nombre"
    t.integer "edad"
    t.integer "peso"
    t.text "historia"
    t.bigint "pelicula_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pelicula_id"], name: "index_characters_on_pelicula_id"
  end

  create_table "generos", force: :cascade do |t|
    t.string "nombre"
    t.string "imagen"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "peliculas", force: :cascade do |t|
    t.string "imagen"
    t.string "titulo"
    t.integer "calificacion"
    t.bigint "genero_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genero_id"], name: "index_peliculas_on_genero_id"
  end

  add_foreign_key "characters", "peliculas"
  add_foreign_key "peliculas", "generos"
end