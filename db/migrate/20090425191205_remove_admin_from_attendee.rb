class RemoveAdminFromAttendee < ActiveRecord::Migration
  def self.up
    remove_column :attendees,:is_admin
  end

  def self.down
    add_column :attendees,:is_admin, :boolean, :default=>false
  end
end
