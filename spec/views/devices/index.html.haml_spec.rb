require 'spec_helper'

describe "devices/index.html.haml" do
  before(:each) do
    assign(:devices, [
      stub_model(Device,
        :serial_number => "Serial Number",
        :model_number => "Model Number",
        :type => "Type",
        :tag => "Tag",
        :user_id => 1,
        :pool_id => 1
      ),
      stub_model(Device,
        :serial_number => "Serial Number",
        :model_number => "Model Number",
        :type => "Type",
        :tag => "Tag",
        :user_id => 1,
        :pool_id => 1
      )
    ])
  end

  it "renders a list of devices" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Serial Number".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Model Number".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Tag".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
