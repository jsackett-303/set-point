require 'spec_helper'

describe Location do

  before(:each) do
    Location.delete_all
  end

  describe 'validations' do

    it 'requires an address' do
      Location.new.valid?.should_not be true
      location = Location.new do |l|
        l.address = '123 Main St, Some Town, USA'
      end
      location.valid?.should be true
      location.save.should be true
    end

    it 'can not be a duplicate address' do
      location = Location.new do |l|
        l.address = '123 Main St, Some Town, USA'
      end
      location.save.should be true
      new_location = Location.new do |l|
        l.address = '123 Main St, Some Town, USA'
      end
      new_location.valid?.should_not be true
      new_location.save.should be false
    end

  end

end
