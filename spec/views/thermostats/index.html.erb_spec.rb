require 'spec_helper'

describe "thermostats/index" do
  before(:each) do
    assign(:thermostats, [
      stub_model(Thermostat),
      stub_model(Thermostat)
    ])
  end

  it "renders a list of thermostats" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
