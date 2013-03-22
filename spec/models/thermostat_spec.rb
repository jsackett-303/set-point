require 'spec_helper'

describe Thermostat do

  before(:each) do
    Thermostat.delete_all
  end

  describe 'validations' do

    it 'requires an associated location, serial number, and set point' do
      Thermostat.new.valid?.should_not be true
      tstat = Thermostat.new do |l|
        l.serial_number = 12345
        l.set_point = 80
        l.location_id = 1
      end
      tstat.valid?.should be true
      tstat.save.should be true
      new_tstat = Thermostat.new do |l|
        l.serial_number = 12345
        l.set_point = 80
        l.location_id = 1
      end
      new_tstat.valid?.should_not be true
    end

  end

end
