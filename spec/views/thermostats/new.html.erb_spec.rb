require 'spec_helper'

describe "thermostats/new" do
  before(:each) do
    assign(:thermostat, stub_model(Thermostat).as_new_record)
  end

  it "renders new thermostat form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", thermostats_path, "post" do
    end
  end
end
