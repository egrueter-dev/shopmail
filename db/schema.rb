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

ActiveRecord::Schema.define(version: 20170116003129) do

  create_table "campaigns", force: :cascade do |t|
    t.string  "name"
    t.integer "shop_id"
    t.index ["shop_id"], name: "index_campaigns_on_shop_id"
  end

  create_table "email_messages", force: :cascade do |t|
    t.date     "date_to_send"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "campaign_id"
    t.index ["campaign_id"], name: "index_email_messages_on_campaign_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string   "shopify_domain", null: false
    t.string   "shopify_token",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "from_email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.index ["shopify_domain"], name: "index_shops_on_shopify_domain", unique: true
  end

end
