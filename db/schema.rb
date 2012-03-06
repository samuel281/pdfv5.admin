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

ActiveRecord::Schema.define(:version => 20120306021757) do

  create_table "histories", :force => true do |t|
    t.integer  "job_id"
    t.datetime "start_at"
    t.datetime "last_ack_at"
    t.datetime "finish_at"
    t.string   "result"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "histories", ["job_id"], :name => "index_histories_on_job_id"

  create_table "jobs", :force => true do |t|
    t.string   "name"
    t.boolean  "active"
    t.string   "arguments"
    t.integer  "schedule_min"
    t.text     "description"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "jar_path"
  end

  create_table "logs", :force => true do |t|
    t.integer  "history_id"
    t.string   "log_type"
    t.string   "message"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "logs", ["history_id"], :name => "index_logs_on_history_id"

end
