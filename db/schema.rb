# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121014231254) do

  create_table "game_goalies", :force => true do |t|
    t.integer  "game_id"
    t.integer  "player_id"
    t.integer  "team_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "game_referees", :force => true do |t|
    t.integer  "game_id"
    t.integer  "player_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "game_scorekeepers", :force => true do |t|
    t.integer  "game_id"
    t.integer  "player_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "games", :force => true do |t|
    t.integer  "season_id"
    t.date     "date"
    t.time     "time"
    t.text     "notes"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "games_teams", :force => true do |t|
    t.integer  "game_id"
    t.integer  "team_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "goal_types", :force => true do |t|
    t.integer  "goaltype_id"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "penalty_types", :force => true do |t|
    t.integer  "penalty_id"
    t.text     "description"
    t.time     "duration"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "player_absences", :force => true do |t|
    t.integer  "game_id"
    t.integer  "player_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "player_goals", :force => true do |t|
    t.integer  "team_id"
    t.integer  "scored_by"
    t.integer  "first_assist"
    t.integer  "second_assist"
    t.time     "time_in_period"
    t.integer  "period"
    t.integer  "game_id"
    t.integer  "goaltype_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "player_penalties", :force => true do |t|
    t.integer  "player_id"
    t.time     "time_in_period"
    t.time     "duration"
    t.integer  "period"
    t.integer  "game_id"
    t.integer  "penalty_type_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "player_stars", :force => true do |t|
    t.integer  "game_id"
    t.integer  "player_id"
    t.integer  "level"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "players", :force => true do |t|
    t.string   "position"
    t.string   "shoots"
    t.string   "first_name"
    t.string   "last_name"
    t.binary   "photo"
    t.string   "phone_number"
    t.string   "email_address"
    t.boolean  "signed_waiver"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "players_teams", :force => true do |t|
    t.integer  "player_id"
    t.integer  "team_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "seasons", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "team_shot_counts", :force => true do |t|
    t.integer  "game_id"
    t.integer  "team_id"
    t.integer  "period"
    t.integer  "count"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.string   "color"
    t.integer  "season_id"
    t.integer  "captain_id"
    t.integer  "goalie_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
