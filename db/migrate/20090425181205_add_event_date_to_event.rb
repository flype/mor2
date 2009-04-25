class AddEventDateToEvent < ActiveRecord::Migration
  def self.up
    add_column :events,:final_date,:date
  end

  def self.down
    remove_column :events,:final_date
  end
end
