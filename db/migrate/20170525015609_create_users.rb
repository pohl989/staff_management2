class CreateUsers < ActiveRecord::Migration[5.1]

  def up
    create_table :users do |t|

      t.string "first_name", :default => '', :null => false
      t.string "last_name", :default => '', :null => false
      t.string "email", :default => '', :null => false
      t.string "password", :limit => 40
      t.string "program", :default => '', :null => false
      t.string "division"
      t.string "title"
      t.string "phone_number"
      t.string "image"

      t.timestamps
      #t.datetime "created_at"
      #t.datetime "updated_at"
    end
  end

  def down
    drop_table :users

  end

end
