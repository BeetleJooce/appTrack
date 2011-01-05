require 'spec_helper'

describe "devices/new.html.haml" do
  before(:each) do
    assign(:device, stub_model(Device,
      :serial_number => "MyString",
      :model_number => "MyString",
      :type => "MyString",
      :tag => "MyString",
      :user_id => 1,
      :pool_id => 1
    ).as_new_record)
  end

  it "renders new device form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => devices_path, :method => "post" do
      assert_select "input#device_serial_number", :name => "device[serial_number]"
      assert_select "input#device_model_number", :name => "device[model_number]"
      assert_select "input#device_type", :name => "device[type]"
      assert_select "input#device_tag", :name => "device[tag]"
      assert_select "input#device_user_id", :name => "device[user_id]"
      assert_select "input#device_pool_id", :name => "device[pool_id]"
    end
  end
end
