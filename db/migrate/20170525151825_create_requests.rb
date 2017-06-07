class CreateRequests < ActiveRecord::Migration[5.1]
  def up
    create_table :requests do |t|

      t.integer "user_id"
      t.string "first_name_recipient", :default => '', :null => false
      t.string "last_name_recipient", :default => '', :null => false
      t.string "personal_email_recipient", :default => '', :null => false
      t.string "title_recipient", :default => '', :null => false
      t.string "program_recipient"
      t.string "division_recipient"
      t.text "request_notes"

      t.timestamps
    end
  end

  def down
    drop_table :requests
  end
end
