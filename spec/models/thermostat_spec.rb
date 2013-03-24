require 'spec_helper'

describe Thermostat do

  before(:each) do
    Thermostat.delete_all
    Location.new do |l|
      l.address = '123 Main St, Some Town, USA'
    end.save!
  end

  let(:location) { Location.first.id }

  describe 'validations' do

    it 'requires an associated location, serial number, and set point' do
      Thermostat.new.valid?.should_not be true
      tstat = Thermostat.new do |l|
        l.serial_number = 12345
        l.set_point = 80
        l.location_id = location
      end
      tstat.valid?.should be true
      tstat.save.should be true
      new_tstat = Thermostat.new do |l|
        l.serial_number = 12345
        l.set_point = 81
        l.location_id = location
      end
      new_tstat.valid?.should_not be true
    end

  end

end
