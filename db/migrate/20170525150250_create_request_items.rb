class CreateRequestItems < ActiveRecord::Migration[5.1]
  def up
    create_table :request_items do |t|

      t.string "item_name", :default => '', :null => false
      t.integer "request_id"
      t.text "description"
      t.string "access_type"

      t.timestamps
    end
    add_index :request_items, :request_id


  end

  def down
    drop_table :request_items
  end


end
