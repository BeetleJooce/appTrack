require 'spec_helper'

describe "devices/show.html.haml" do
  before(:each) do
    @device = assign(:device, stub_model(Device,
      :serial_number => "Serial Number",
      :model_number => "Model Number",
      :type => "Type",
      :tag => "Tag",
      :user_id => 1,
      :pool_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Serial Number/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Model Number/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Tag/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
