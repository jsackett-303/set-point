require 'spec_helper'

describe "thermostats/show" do
  before(:each) do
    @thermostat = assign(:thermostat, stub_model(Thermostat))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
