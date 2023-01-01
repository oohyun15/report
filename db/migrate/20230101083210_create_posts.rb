class CreatePosts < ActiveRecord::Migration[7.0]
  def up
    create_table :posts do |t|
      t.string "type"
      t.string "title", null: false
      t.text "description"
      t.bigint "user_id", null: false
      t.integer "status", default: 0
      t.integer "flags", default: 0
      t.index ["user_id"]
      t.timestamps
    end
  end

  def down
    drop_table :posts
  end
end
