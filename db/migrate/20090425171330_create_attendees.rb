class CreateAttendees < ActiveRecord::Migration
  def self.up
    create_table :attendees do |t|
      t.integer :event_id, :null=>false
      t.string :email, :null=>false
      t.boolean :is_admin, :default=>false
      t.string :token, :limit=>20, :null=>false
      t.timestamps
    end
  end

  def self.down
    drop_table :attendees
  end
end
