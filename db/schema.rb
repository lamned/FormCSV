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

ActiveRecord::Schema.define(:version => 20130625150135) do

  create_table "questionaires", :force => true do |t|
    t.string   "gender"
    t.string   "profession"
    t.integer  "age"
    t.string   "city"
    t.string   "graduation"
    t.integer  "year_apprenticeship"
    t.boolean  "first_apprenticeship"
    t.string   "subsistence"
    t.integer  "gross_salary"
    t.integer  "number_applications"
    t.string   "found_apprenticeship"
    t.string   "internet_portal"
    t.string   "known_portals"
    t.string   "different_professions"
    t.boolean  "dream_job"
    t.string   "different_dream_job"
    t.string   "reason_apprenticeship"
    t.boolean  "canceled_apprenticeship"
    t.string   "canceled_job"
    t.string   "reason_canceled_apprenticeship"
    t.string   "annoying_apprenticeship"
    t.string   "organization_or_school"
    t.boolean  "school_like"
    t.boolean  "organization_like"
    t.boolean  "profession_like"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

end
