class CreateTagToShops < ActiveRecord::Migration[5.2]
  def change
    create_table :tag_to_shops do |t|
      t.bigint "tag_id"
      t.bigint "shop_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["shop_id"], name: "index_tag_to_shops_on_shop_id"
      t.index ["tag_id"], name: "index_tag_to_shops_on_tag_id"
      t.timestamps
    end
  end
end
