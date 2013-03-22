Given(/^a location at "(.*?)" with the following thermostats:$/) do |arg1, table|

  # table is a Cucumber::Ast::Table
  location = Location.new do |l|
    l.address = arg1
  end

  location.save!

  table.hashes.each do |h|
    location.thermostats << Thermostat.new(h)
  end

end

Given(/^I am on the demand response page$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^I set all thermostats to (\d+) within (\d+) miles of Broomfield, CO$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

Then(/^the thermostats should be set as follows:$/) do |table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end
