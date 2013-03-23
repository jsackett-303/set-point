require 'spec_helper'

describe "thermostats/edit" do
  before(:each) do
    @thermostat = assign(:thermostat, stub_model(Thermostat))
  end

  it "renders the edit thermostat form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", thermostat_path(@thermostat), "post" do
    end
  end
end
