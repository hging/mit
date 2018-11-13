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

ActiveRecord::Schema.define(version: 20181113154700) do

  create_table "abouts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "content", limit: 4294967295
    t.integer "singleton_guard"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["singleton_guard"], name: "index_abouts_on_singleton_guard", unique: true
  end

  create_table "activities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "content"
    t.string "title"
    t.string "author"
    t.boolean "published"
    t.timestamp "start"
    t.timestamp "end"
    t.integer "activity_type", default: 0
    t.string "news_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.json "logo"
    t.index ["activity_type"], name: "index_activities_on_activity_type"
    t.index ["end"], name: "index_activities_on_end"
    t.index ["published"], name: "index_activities_on_published"
    t.index ["start"], name: "index_activities_on_start"
  end

  create_table "ckeditor_assets", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "data_file_name", null: false
    t.string "data_content_type"
    t.integer "data_file_size"
    t.string "type", limit: 30
    t.integer "width"
    t.integer "height"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type"], name: "index_ckeditor_assets_on_type"
  end

  create_table "homes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "background"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "link"
  end

  create_table "menus", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.text "body", limit: 4294967295
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "zindex", default: 0
    t.index ["zindex"], name: "index_menus_on_zindex"
  end

  create_table "people", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "avatar"
    t.string "name"
    t.string "title"
    t.string "email"
    t.string "data_content_type"
    t.string "data_file_size"
    t.string "first_word"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "professional"
    t.string "research_area"
    t.string "faculty"
    t.integer "person_type"
    t.text "group", limit: 4294967295
    t.text "teaching", limit: 4294967295
    t.text "research", limit: 4294967295
    t.text "publication", limit: 4294967295
    t.index ["first_word"], name: "index_people_on_first_word"
  end

  create_table "staffs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", limit: 100
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sub_menus", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "menu_id"
    t.string "title"
    t.text "body", limit: 4294967295
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["menu_id"], name: "index_sub_menus_on_menu_id"
  end

end
