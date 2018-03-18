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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180317235321) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "back_tests", force: :cascade do |t|
    t.integer "from_currency_id", null: false
    t.integer "to_currency_id", null: false
    t.bigint "strategy_id", null: false
    t.bigint "time_frame_id", null: false
    t.bigint "market_id", null: false
    t.string "name", null: false
    t.string "status", default: "new", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["market_id"], name: "index_back_tests_on_market_id"
    t.index ["strategy_id"], name: "index_back_tests_on_strategy_id"
    t.index ["time_frame_id"], name: "index_back_tests_on_time_frame_id"
  end

  create_table "currencies", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "markets", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parameter_values", force: :cascade do |t|
    t.bigint "parameter_id", null: false
    t.string "value", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parameter_id"], name: "index_parameter_values_on_parameter_id"
  end

  create_table "parameter_values_permutations", id: false, force: :cascade do |t|
    t.bigint "permutation_id", null: false
    t.bigint "parameter_value_id", null: false
  end

  create_table "parameters", force: :cascade do |t|
    t.bigint "strategy_id", null: false
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["strategy_id"], name: "index_parameters_on_strategy_id"
  end

  create_table "permutations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "runs", force: :cascade do |t|
    t.bigint "back_test_id", null: false
    t.bigint "permutation_id", null: false
    t.decimal "score", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["back_test_id"], name: "index_runs_on_back_test_id"
    t.index ["permutation_id"], name: "index_runs_on_permutation_id"
  end

  create_table "statistics", force: :cascade do |t|
    t.bigint "permutation_id", null: false
    t.bigint "back_test_id", null: false
    t.decimal "average_relative_profit", null: false
    t.decimal "relative_profit_sum", null: false
    t.integer "number_of_runs", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["back_test_id"], name: "index_statistics_on_back_test_id"
    t.index ["permutation_id"], name: "index_statistics_on_permutation_id"
  end

  create_table "strategies", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "time_frames", force: :cascade do |t|
    t.date "from", null: false
    t.date "to", null: false
    t.interval "duration", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "back_tests", "currencies", column: "from_currency_id"
  add_foreign_key "back_tests", "currencies", column: "to_currency_id"
  add_foreign_key "back_tests", "markets"
  add_foreign_key "back_tests", "strategies"
  add_foreign_key "back_tests", "time_frames"
  add_foreign_key "parameter_values", "parameters"
  add_foreign_key "parameter_values_permutations", "parameter_values"
  add_foreign_key "parameter_values_permutations", "permutations"
  add_foreign_key "parameters", "strategies"
  add_foreign_key "runs", "back_tests"
  add_foreign_key "runs", "permutations"
  add_foreign_key "statistics", "back_tests"
  add_foreign_key "statistics", "permutations"
end
