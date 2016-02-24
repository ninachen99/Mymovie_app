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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160224172018) do

  create_table "movies", force: :cascade do |t|
    t.string   "title"
    t.string   "image"
    t.string   "showtime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "movie_id"
    t.integer  "theater_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "orders", ["movie_id"], name: "index_orders_on_movie_id"
  add_index "orders", ["theater_id"], name: "index_orders_on_theater_id"

  create_table "showtimes", force: :cascade do |t|
    t.string   "month"
    t.string   "date"
    t.string   "hour"
    t.string   "year"
    t.integer  "theater_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "theaters", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.integer  "seats"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
