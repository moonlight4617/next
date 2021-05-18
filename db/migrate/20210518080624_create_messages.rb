class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text "content"
      t.integer "fin_flg"
      t.integer "del_flg"
      t.bigint "chat_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.string "sender"
      t.index ["chat_id"], name: "index_messages_on_chat_id"
      t.timestamps
    end
  end
end
