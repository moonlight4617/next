class CreateAvailables < ActiveRecord::Migration[5.2]
  def change
    create_table :availables do |t|
      t.string "rent_date"
      t.string "start_time"
      t.bigint "shop_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["shop_id"], name: "index_availables_on_shop_id"
      t.timestamps
    end
  end
end
