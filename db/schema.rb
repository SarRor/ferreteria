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

ActiveRecord::Schema.define(version: 2018_10_12_230644) do

  create_table "categories", force: :cascade do |t|
    t.string "nombre"
    t.integer "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "di"
    t.index ["usuario_id"], name: "index_categories_on_usuario_id"
  end

  create_table "category_productos", force: :cascade do |t|
    t.integer "producto_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category_id"
    t.index ["category_id"], name: "index_category_productos_on_category_id"
    t.index ["producto_id"], name: "index_category_productos_on_producto_id"
  end

  create_table "productos", force: :cascade do |t|
    t.string "nombre"
    t.string "imagen"
    t.decimal "precio", precision: 7, scale: 2
    t.integer "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "medida"
    t.index ["usuario_id"], name: "index_productos_on_usuario_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "permission_level", default: 1
    t.string "imagen"
    t.string "nombre"
    t.string "telefono"
    t.string "username"
    t.string "provider"
    t.string "uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
  end

end
