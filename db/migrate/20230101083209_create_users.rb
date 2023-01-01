class CreateUsers < ActiveRecord::Migration[7.0]
  def up
    create_table :users do |t|
      t.string "type"
      t.string "email", null: false
      t.string "name"
      t.string "auth_token"
      t.string "password"
      t.string "password_salt"
      t.integer "status", default: 0
      t.integer "flags", default: 0
      t.index ["auth_token"], name: "index_users_on_auth_token", length: 10
      t.index ["email"], name: "unique_users_on_email", unique: true
      t.timestamps
    end
  end

  def down
    drop_table :users
  end
end
