# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20130620003606) do

  create_table "editorships", :force => true do |t|
    t.integer  "user_id"
    t.integer  "editor_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "editorships", ["editor_id"], :name => "index_editorships_on_editor_id"
  add_index "editorships", ["user_id", "editor_id"], :name => "index_editorships_on_user_id_and_editor_id", :unique => true
  add_index "editorships", ["user_id"], :name => "index_editorships_on_user_id"

  create_table "pl_additions", :force => true do |t|
    t.integer  "playlist_id"
    t.integer  "video_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "adder_id"
    t.string   "adder_username"
  end

  add_index "pl_additions", ["playlist_id"], :name => "index_pl_additions_on_playlist_id"

  create_table "playlists", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.integer  "user_id"
    t.boolean  "private",    :default => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "hidden_user",     :default => false
  end

  add_index "users", ["username"], :name => "index_users_on_username", :unique => true

  create_table "videos", :force => true do |t|
    t.string   "youtube_id"
    t.float    "rating"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.boolean  "music"
    t.string   "name"
    t.string   "url"
    t.string   "url_raw"
    t.string   "category"
    t.text     "description"
  end

  add_index "videos", ["youtube_id"], :name => "index_videos_on_youtube_id", :unique => true

end
