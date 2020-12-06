# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_06_032932) do

  create_table "fantasy_teams", force: :cascade do |t|
    t.string "name"
    t.integer "bench"
    t.datetime "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "nba_teams", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "team"
    t.integer "fantasy_points"
    t.boolean "injured"
    t.string "image"
    t.integer "fantasy_team_id", null: false
    t.integer "nba_team_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "position"
    t.index ["fantasy_team_id"], name: "index_players_on_fantasy_team_id"
    t.index ["nba_team_id"], name: "index_players_on_nba_team_id"
  end

  add_foreign_key "players", "fantasy_teams"
  add_foreign_key "players", "nba_teams"
end
