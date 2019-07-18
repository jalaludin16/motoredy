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

ActiveRecord::Schema.define(version: 2019_03_03_110639) do

  create_table "categoris", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "categori_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departements", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nama_departement"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gerbangs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nama_gerbang"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jabatans", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nama_jabatan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "priorities", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "prioritas"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "problems", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "deskripsi"
    t.integer "user_id"
    t.integer "categori_id"
    t.integer "priority_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "solutions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "solusi"
    t.integer "user_id"
    t.integer "problem_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "ndk"
    t.string "name"
    t.string "email"
    t.integer "password"
    t.integer "level"
    t.integer "jabatan_id"
    t.integer "gerbang_id"
    t.integer "departement_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
