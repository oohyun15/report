class CreateComments < ActiveRecord::Migration[7.0]
  def up
    create_table :comments do |t|
      t.string "title", null: false
      t.text "description"
      t.bigint "user_id", null: false
      t.bigint "target_id", null: false
      t.bigint "target_type", null: false
      t.integer "status", default: 0
      t.integer "flags", default: 0
      t.index ["user_id"]
      t.index ["target_id", "target_type"]
      t.timestamps
    end
  end

  def down
    drop_table :comments
  end
end
