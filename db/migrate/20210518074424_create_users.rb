class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
    t.timestamps
    t.string "address"
    t.integer "tel"
    t.string "email"
    t.string "password_digest"
    t.integer "del_flg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "remember_digest"
    t.string "image"
    t.string "public_uid"
    t.index ["email"], name: "index_users_on_email", unique: true
    end
  end
end
