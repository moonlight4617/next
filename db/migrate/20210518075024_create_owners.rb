class CreateOwners < ActiveRecord::Migration[5.2]
  def change
    create_table :owners do |t|

    t.timestamps
    t.string "name"
    t.string "address"
    t.integer "tel"
    t.string "email"
    t.string "password_digest"
    t.integer "del_flg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "remember_digest"
    t.index ["email"], name: "index_owners_on_email", unique: true
    end
  end
end
