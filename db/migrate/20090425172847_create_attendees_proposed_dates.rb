class CreateAttendeesProposedDates < ActiveRecord::Migration
  def self.up
    create_table :attendees_proposed_dates do |t|
      t.integer :attendeee_id, :null=>false
      t.integer :proposed_date_id, :null=>false
    end
  end

  def self.down
    drop_table :attendees_proposed_dates
  end
end
