Then /^the following event should have been created:$/ do |table|
  hash_table = table.transpose.hashes.first
  event = Event.find_by_name(hash_table['name'])  
  assert event
  assert_equal event.proposed_dates.map(&:date).join(', '), hash_table['dates']
end
