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

ActiveRecord::Schema.define(version: 2020_02_24_144946) do

  create_table "owners", force: :cascade do |t|
    t.string "name"
    t.boolean "bg_checks_complete"
    t.integer "animal_capacity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pets", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.integer "price"
    t.boolean "house_trained"
    t.integer "species_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "owner_id"
    t.index ["owner_id"], name: "index_pets_on_owner_id"
    t.index ["species_id"], name: "index_pets_on_species_id"
  end

  create_table "species", force: :cascade do |t|
    t.string "name"
    t.boolean "rare"
    t.string "size"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "pets", "owners"
  add_foreign_key "pets", "species"
end
