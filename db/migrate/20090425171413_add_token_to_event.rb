class AddTokenToEvent < ActiveRecord::Migration
  def self.up
    add_column :events,:token,:string,:limit=>20
  end

  def self.down
    remove_column :events, :token
  end
end
