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

ActiveRecord::Schema.define(version: 20180823133729) do

  create_table "flowdeals", force: :cascade do |t|
    t.integer "flowitem_id"
    t.integer "unitdeal_id"
    t.integer "dealtype"
    t.integer "floworderid"
    t.integer "flowtype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flowitem_id"], name: "index_flowdeals_on_flowitem_id"
    t.index ["unitdeal_id"], name: "index_flowdeals_on_unitdeal_id"
  end

  create_table "flowitems", force: :cascade do |t|
    t.integer "unititem_id"
    t.string "code"
    t.string "name"
    t.text "remarks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["unititem_id"], name: "index_flowitems_on_unititem_id"
  end

  create_table "flowworks", force: :cascade do |t|
    t.integer "flowdeal_id"
    t.integer "unitwork_id"
    t.integer "accouttype"
    t.integer "floworderid"
    t.integer "flowtype"
    t.integer "vouchertemplatetype"
    t.integer "contenttype"
    t.integer "resourcestype"
    t.integer "subdealtype"
    t.integer "stockaccounttype"
    t.integer "copyresourcestype"
    t.integer "beforeunitwork_id"
    t.integer "afterunitwork_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flowdeal_id"], name: "index_flowworks_on_flowdeal_id"
    t.index ["unitwork_id"], name: "index_flowworks_on_unitwork_id"
  end

  create_table "roleconfigs", force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_roleconfigs_on_role_id"
    t.index ["user_id"], name: "index_roleconfigs_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "unitdeals", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "unititems", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "unitworks", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
