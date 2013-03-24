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
  visit('/')
  page.should have_content 'Demand Response Page'
end

Given(/^I set all thermostats to (\d+) within (\d+) miles of Broomfield, CO$/) do |arg1, arg2|
  fill_in('address', with: 'Broomfield, CO')
  fill_in('setting', with: arg1)
  fill_in('radius', with: arg2)
  click_button('Find Thermostats')
end

Then(/^the thermostats should be set as follows:$/) do |table|
  # table is a Cucumber::Ast::Table
  table.hashes.each do |h|
    t = Thermostat.where(serial_number: h['serial_number']).first
    t.set_point.should eq(h['set_point'].to_i)
  end
end
