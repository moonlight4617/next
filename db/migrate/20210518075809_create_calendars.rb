class CreateCalendars < ActiveRecord::Migration[5.2]
  def change
    create_table :calendars do |t|
    t.string "start_time"
    t.string "end_time"
    t.string "rent_date"
    t.bigint "shop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["shop_id"], name: "index_calendars_on_shop_id"
    t.index ["user_id"], name: "index_calendars_on_user_id"
      t.timestamps
    end
  end
end
