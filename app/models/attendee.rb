class Attendee < ActiveRecord::Base
  include Tokenizable
  
  has_and_belongs_to_many :proposed_dates
  belongs_to :event
end
