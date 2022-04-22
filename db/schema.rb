ActiveRecord::Schema.define(version: 2022_04_22_085553) do

  create_table "categories", force: :cascade do |t|
    t.string "category_id"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "category_menus", force: :cascade do |t|
    t.string "category_menu_id"
    t.string "menu_id"
    t.string "category_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "menus", force: :cascade do |t|
    t.string "menu_id"
    t.string "name"
    t.integer "price"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "order_details", force: :cascade do |t|
    t.string "order_detail_id"
    t.string "order_id"
    t.string "menu_id"
    t.integer "price"
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string "order_id"
    t.string "customer_name"
    t.string "customer_email"
    t.string "status"
    t.date "order_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
