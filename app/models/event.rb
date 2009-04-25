class Event < ActiveRecord::Base
  has_many :proposed_dates
  accepts_nested_attributes_for :proposed_dates
end
