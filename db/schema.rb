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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 201110271693467) do

  create_table "apis", :force => true do |t|
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "brochure_assignments", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "machine_id"
    t.integer  "brochure_id"
    t.integer  "position"
  end

  add_index "brochure_assignments", ["brochure_id"], :name => "index_brochure_assignments_on_brochure_id"
  add_index "brochure_assignments", ["machine_id"], :name => "index_brochure_assignments_on_machine_id"

  create_table "brochure_translations", :force => true do |t|
    t.integer  "brochure_id"
    t.string   "locale"
    t.string   "name"
    t.string   "external_description"
    t.string   "internal_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "brochure_translations", ["brochure_id"], :name => "index_brochure_translations_on_brochure_id"

  create_table "brochures", :force => true do |t|
    t.string   "name"
    t.string   "external_description"
    t.string   "internal_description"
    t.string   "file_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "brochure_file_name"
    t.string   "brochure_content_type"
    t.integer  "brochure_file_size"
    t.datetime "brochure_updated_at"
    t.string   "pdf_file_name"
    t.string   "pdf_content_type"
    t.integer  "pdf_file_size"
    t.datetime "pdf_updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "site_id"
    t.text     "description"
    t.integer  "position"
    t.string   "permalink"
    t.boolean  "published",          :default => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  add_index "categories", ["site_id"], :name => "index_categories_on_site_id"

  create_table "feature_translations", :force => true do |t|
    t.integer  "feature_id"
    t.string   "locale"
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "feature_translations", ["feature_id"], :name => "index_feature_translations_on_feature_id"

  create_table "features", :force => true do |t|
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "machine_id"
  end

  add_index "features", ["machine_id"], :name => "index_features_on_machine_id"

  create_table "machine_assignments", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "machine_id"
    t.integer  "category_id"
    t.integer  "position"
  end

  add_index "machine_assignments", ["category_id"], :name => "index_machine_assignments_on_category_id"
  add_index "machine_assignments", ["machine_id"], :name => "index_machine_assignments_on_machine_id"

  create_table "machine_translations", :force => true do |t|
    t.integer  "machine_id"
    t.string   "locale"
    t.text     "description"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "machine_translations", ["machine_id"], :name => "index_machine_translations_on_machine_id"

  create_table "machines", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "height"
    t.integer  "width"
    t.integer  "depth"
    t.integer  "weight"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_content_type"
    t.string   "permalink"
    t.boolean  "published",             :default => false
    t.string   "us_photo_file_name"
    t.string   "us_photo_content_type"
    t.integer  "us_photo_file_size"
    t.datetime "us_photo_updated_at"
    t.string   "uk_photo_file_name"
    t.string   "uk_photo_content_type"
    t.integer  "uk_photo_file_size"
    t.datetime "uk_photo_updated_at"
    t.string   "in_photo_file_name"
    t.string   "in_photo_content_type"
    t.integer  "in_photo_file_size"
    t.datetime "in_photo_updated_at"
    t.string   "capacity"
  end

  create_table "mailers", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "manual_assignments", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "machine_id"
    t.integer  "manual_id"
    t.integer  "position"
  end

  add_index "manual_assignments", ["machine_id"], :name => "index_manual_assignments_on_machine_id"
  add_index "manual_assignments", ["manual_id"], :name => "index_manual_assignments_on_manual_id"

  create_table "manual_translations", :force => true do |t|
    t.integer  "manual_id"
    t.string   "locale"
    t.string   "external_description"
    t.string   "name"
    t.string   "internal_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "manual_translations", ["manual_id"], :name => "index_manual_translations_on_manual_id"

  create_table "manuals", :force => true do |t|
    t.string   "name"
    t.string   "external_description"
    t.string   "internal_description"
    t.string   "file"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "file_name"
    t.string   "manual_file_name"
    t.string   "manual_content_type"
    t.integer  "manual_file_size"
    t.datetime "manual_updated_at"
    t.string   "pdf_file_name"
    t.string   "pdf_content_type"
    t.integer  "pdf_file_size"
    t.datetime "pdf_updated_at"
  end

  create_table "pressreleases", :force => true do |t|
    t.string   "name"
    t.string   "permalink"
    t.text     "content"
    t.boolean  "publishedState"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "site_id"
    t.string   "teaser"
  end

  add_index "pressreleases", ["site_id"], :name => "index_pressreleases_on_site_id"

  create_table "sites", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "about"
    t.text     "jobs"
    t.text     "terms"
    t.string   "title"
  end

  create_table "statics", :force => true do |t|
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "urlpools", :force => true do |t|
    t.string   "oldUrl"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "machine_id"
    t.integer  "category_id"
  end

  add_index "urlpools", ["category_id"], :name => "index_urlpools_on_category_id"
  add_index "urlpools", ["machine_id"], :name => "index_urlpools_on_machine_id"

  create_table "users", :force => true do |t|
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.string   "name"
    t.string   "email_address"
    t.boolean  "administrator",                           :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state",                                   :default => "inactive"
    t.datetime "key_timestamp"
    t.string   "user_locale",                             :default => "us"
  end

  add_index "users", ["state"], :name => "index_users_on_state"

end
