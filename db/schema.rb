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

ActiveRecord::Schema.define(version: 20180401082631) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "administrators", force: :cascade, comment: "超级管理员" do |t|
    t.string "login", comment: "登录名"
    t.string "nickname", comment: "昵称"
    t.string "password_digest", comment: "密码"
    t.datetime "expire_at", comment: "过期时间"
    t.integer "state", comment: "状态 1:启用 2:禁用"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade, comment: "公司" do |t|
    t.string "name", comment: "公司名称"
    t.text "describe", comment: "公司描述"
    t.string "contact_name", comment: "联系人"
    t.string "contact_phone", comment: "联系电话"
    t.string "address", comment: "公司地址"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade, comment: "职位表" do |t|
    t.string "name", comment: "职位名称"
    t.text "description", comment: "职位描述"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "login"
    t.string "password_digest"
    t.string "remeber_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
