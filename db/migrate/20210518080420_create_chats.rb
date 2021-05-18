class CreateChats < ActiveRecord::Migration[5.2]
  def change
    create_table :chats do |t|
      t.string "room_name"
      t.integer "application_flg"
      t.bigint "shop_id"
      t.bigint "user_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["shop_id"], name: "index_chats_on_shop_id"
      t.index ["user_id"], name: "index_chats_on_user_id"
      t.timestamps
    end
  end
end
