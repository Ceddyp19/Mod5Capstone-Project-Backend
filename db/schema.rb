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

ActiveRecord::Schema.define(version: 2020_10_31_054153) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "collages", force: :cascade do |t|
    t.string "pics"
    t.string "story"
    t.string "date"
    t.integer "visited_destination_id"
  end

  create_table "destinations", force: :cascade do |t|
    t.string "name"
    t.string "lng"
    t.string "lat"
    t.string "image"
    t.string "addr"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "my_pins", force: :cascade do |t|
    t.integer "user_id"
    t.integer "destination_id"
    t.boolean "isFavorite"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_destinations", force: :cascade do |t|
    t.integer "user_id"
    t.integer "destination_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "name"
    t.string "password_digest"
    t.string "email"
  end

  create_table "visited_destinations", force: :cascade do |t|
    t.integer "destination_id"
  end

  create_table "visiteds", force: :cascade do |t|
    t.integer "destination_id"
    t.integer "user_id"
    t.string "picture_url"
    t.string "description"
  end

end
