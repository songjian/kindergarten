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

ActiveRecord::Schema.define(version: 20180711065944) do

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

  create_table "article_categories", force: :cascade, comment: "资讯分类" do |t|
    t.string "name", comment: "分类名"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "articles", force: :cascade, comment: "资讯" do |t|
    t.string "title", comment: "标题"
    t.text "content", comment: "正文"
    t.integer "article_category_id", comment: "资讯分类id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "demands", force: :cascade, comment: "需求" do |t|
    t.text "content", comment: "需求描述"
    t.integer "kind", default: 1, comment: "需求类型"
    t.integer "state", default: 0, comment: "状态"
    t.integer "contact_kind", default: 1, comment: "联系方式类型"
    t.string "contact", comment: "联系方式"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enroll_batches", force: :cascade, comment: "报名批次" do |t|
    t.string "name", comment: "批次名称"
    t.integer "state", default: 2, comment: "状态 1启用 2禁用"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enrolls", force: :cascade, comment: "报名表" do |t|
    t.string "child_name", comment: "儿童姓名"
    t.string "child_id_number", comment: "儿童身份证号"
    t.integer "enroll_batch_id", comment: "报名批次"
    t.integer "gender", default: 1, comment: "0女 1男"
    t.datetime "birthday", comment: "出生日期"
    t.string "parent_name", comment: "家长姓名"
    t.string "parent_id_number", comment: "家长身份证号"
    t.string "parent_contact", comment: "家长联系方式"
    t.integer "parent_child_relationship", comment: "亲子关系 父亲 母亲 爷爷 奶奶 外公 外婆"
    t.integer "status", default: 0, comment: "报名状态 0提交 1成功 2拒绝"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feedbacks", force: :cascade, comment: "反馈" do |t|
    t.integer "kind", default: 0, comment: "反馈主题"
    t.text "content", comment: "反馈内容"
    t.integer "state", default: 0, comment: "状态 0未处理 1已处理"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade, comment: "职位表" do |t|
    t.string "name", comment: "职位名称"
    t.text "description", comment: "职位描述"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kindeditor_assets", force: :cascade do |t|
    t.string "asset"
    t.integer "file_size"
    t.string "file_type"
    t.integer "owner_id"
    t.string "owner_type"
    t.string "asset_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organization_categories", force: :cascade do |t|
    t.string "name", comment: "分类名称"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organizations", force: :cascade, comment: "组织" do |t|
    t.string "name", comment: "组织名称"
    t.text "describe", comment: "组织描述"
    t.string "contact_name", comment: "联系人"
    t.string "contact_phone", comment: "联系电话"
    t.string "address", comment: "地址"
    t.string "type", comment: "单表继承类型"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "contact_title", comment: "联系人职位"
    t.integer "organization_category_id", comment: "分类id"
  end

  create_table "pages", force: :cascade, comment: "单页" do |t|
    t.string "title", comment: "标题"
    t.string "alias", comment: "别名(英文)"
    t.text "content", comment: "正文"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade, comment: "产品" do |t|
    t.string "name", comment: "产品名称"
    t.string "abstract", comment: "简介"
    t.text "content", comment: "产品说明"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_positions", force: :cascade, comment: "用户职务" do |t|
    t.string "name", comment: "职务名称"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, comment: "用户" do |t|
    t.string "login", comment: "登录名"
    t.string "password_digest", comment: "密码"
    t.string "remeber_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "type", comment: "类型"
    t.string "name", comment: "姓名"
    t.string "nickname", comment: "昵称"
    t.string "contact_phone", comment: "联系电话"
    t.integer "user_position_id", comment: "用户职务id"
  end

end
