class Event < ActiveRecord::Base
  include Tokenizable
  
  has_many :proposed_dates
  has_many :attendees
  accepts_nested_attributes_for :proposed_dates
end
