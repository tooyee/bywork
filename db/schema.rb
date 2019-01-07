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

ActiveRecord::Schema.define(version: 20181212123647) do

  create_table "casedeals", force: :cascade do |t|
    t.string "name"
    t.integer "caseitem_id"
    t.integer "dealtype"
    t.integer "floworderid"
    t.integer "flowtype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["caseitem_id"], name: "index_casedeals_on_caseitem_id"
  end

  create_table "caseflowworks", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.integer "casedeal_id"
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
    t.index ["casedeal_id"], name: "index_caseflowworks_on_casedeal_id"
  end

  create_table "caseitems", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.integer "flowitem_id"
    t.integer "status"
    t.text "remarks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flowitem_id"], name: "index_caseitems_on_flowitem_id"
  end

  create_table "caseworkesselinemags", force: :cascade do |t|
    t.integer "casework_id"
    t.integer "esse_id"
    t.string "code"
    t.string "name"
    t.integer "esselinetype"
    t.text "remarks"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["casework_id"], name: "index_caseworkesselinemags_on_casework_id"
    t.index ["esse_id"], name: "index_caseworkesselinemags_on_esse_id"
  end

  create_table "caseworkesselines", force: :cascade do |t|
    t.integer "casework_id"
    t.integer "caseitem_id"
    t.integer "esse_id"
    t.integer "esseline_id"
    t.string "esselinecode"
    t.string "esselinename"
    t.integer "quantity"
    t.text "unit"
    t.text "remarks"
    t.date "begindate"
    t.date "enddate"
    t.integer "fromwhscode"
    t.integer "towhscode"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["caseitem_id"], name: "index_caseworkesselines_on_caseitem_id"
    t.index ["casework_id"], name: "index_caseworkesselines_on_casework_id"
    t.index ["esse_id"], name: "index_caseworkesselines_on_esse_id"
    t.index ["esseline_id"], name: "index_caseworkesselines_on_esseline_id"
  end

  create_table "caseworkessemags", force: :cascade do |t|
    t.integer "casework_id"
    t.string "code"
    t.string "name"
    t.integer "essetype"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["casework_id"], name: "index_caseworkessemags_on_casework_id"
  end

  create_table "caseworklines", force: :cascade do |t|
    t.integer "casework_id"
    t.integer "caseitem_id"
    t.integer "esse_id"
    t.integer "quantity"
    t.decimal "price"
    t.decimal "cost"
    t.integer "vatgroup"
    t.integer "whscode"
    t.integer "status"
    t.integer "openqty"
    t.integer "baseid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["caseitem_id"], name: "index_caseworklines_on_caseitem_id"
    t.index ["casework_id"], name: "index_caseworklines_on_casework_id"
    t.index ["esse_id"], name: "index_caseworklines_on_esse_id"
  end

  create_table "caseworkmanageesses", force: :cascade do |t|
    t.integer "casework_id"
    t.string "code"
    t.string "name"
    t.integer "essetype"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["casework_id"], name: "index_caseworkmanageesses_on_casework_id"
  end

  create_table "caseworkmanageresselines", force: :cascade do |t|
    t.integer "casework_id"
    t.integer "esse_id"
    t.string "code"
    t.string "name"
    t.integer "esselinetype"
    t.text "remarks"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["casework_id"], name: "index_caseworkmanageresselines_on_casework_id"
    t.index ["esse_id"], name: "index_caseworkmanageresselines_on_esse_id"
  end

  create_table "caseworks", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.integer "caseflowwork_id"
    t.integer "buyid"
    t.string "buycode"
    t.string "buyname"
    t.integer "sellid"
    t.string "sellcode"
    t.string "sellname"
    t.integer "salesid"
    t.string "salescode"
    t.string "salesname"
    t.integer "status"
    t.text "remarks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["caseflowwork_id"], name: "index_caseworks_on_caseflowwork_id"
  end

  create_table "dutydeals", force: :cascade do |t|
    t.integer "dutyitem_id"
    t.integer "flowdeal_id"
    t.integer "seltype"
    t.integer "addtype"
    t.integer "updtype"
    t.integer "deltype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dutyitem_id"], name: "index_dutydeals_on_dutyitem_id"
    t.index ["flowdeal_id"], name: "index_dutydeals_on_flowdeal_id"
  end

  create_table "dutyitems", force: :cascade do |t|
    t.integer "role_id"
    t.integer "flowitem_id"
    t.integer "seltype"
    t.integer "addtype"
    t.integer "updtype"
    t.integer "deltype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flowitem_id"], name: "index_dutyitems_on_flowitem_id"
    t.index ["role_id"], name: "index_dutyitems_on_role_id"
  end

  create_table "dutyworks", force: :cascade do |t|
    t.integer "dutydeal_id"
    t.integer "flowwork_id"
    t.integer "seltype"
    t.integer "addtype"
    t.integer "updtype"
    t.integer "deltype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dutydeal_id"], name: "index_dutyworks_on_dutydeal_id"
    t.index ["flowwork_id"], name: "index_dutyworks_on_flowwork_id"
  end

  create_table "esselines", force: :cascade do |t|
    t.integer "esse_id"
    t.string "code"
    t.string "name"
    t.integer "esselinetype"
    t.text "remarks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["esse_id"], name: "index_esselines_on_esse_id"
  end

  create_table "esses", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.integer "essetype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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
