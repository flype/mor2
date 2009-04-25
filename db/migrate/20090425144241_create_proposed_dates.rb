class CreateProposedDates < ActiveRecord::Migration
  def self.up
    create_table :proposed_dates do |t|
      t.integer :event_id
      t.date :date

      t.timestamps
    end
  end

  def self.down
    drop_table :proposed_dates
  end
end
