require 'spec_helper'

describe "logs/index" do
  before(:each) do
    assign(:logs, [
      stub_model(Log,
        :history => nil,
        :log_type => "Log Type",
        :message => "Message"
      ),
      stub_model(Log,
        :history => nil,
        :log_type => "Log Type",
        :message => "Message"
      )
    ])
  end

  it "renders a list of logs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Log Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Message".to_s, :count => 2
  end
end
