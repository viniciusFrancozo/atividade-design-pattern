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

ActiveRecord::Schema[7.0].define(version: 2023_05_22_015454) do
  create_table "actors", force: :cascade do |t|
    t.string "name"
    t.string "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "directors", force: :cascade do |t|
    t.string "name"
    t.string "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movie_casts", force: :cascade do |t|
    t.integer "actor_id", null: false
    t.integer "movie_id", null: false
    t.integer "director_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["actor_id"], name: "index_movie_casts_on_actor_id"
    t.index ["director_id"], name: "index_movie_casts_on_director_id"
    t.index ["movie_id"], name: "index_movie_casts_on_movie_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "tittle"
    t.string "rate"
    t.text "description"
    t.text "summary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "release_date"
    t.integer "duration_time"
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "rate"
    t.integer "movie_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_ratings_on_movie_id"
  end

  add_foreign_key "movie_casts", "actors"
  add_foreign_key "movie_casts", "directors"
  add_foreign_key "movie_casts", "movies"
  add_foreign_key "ratings", "movies"
end
