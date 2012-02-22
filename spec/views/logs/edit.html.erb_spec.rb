require 'spec_helper'

describe "logs/edit" do
  before(:each) do
    @log = assign(:log, stub_model(Log,
      :history => nil,
      :log_type => "MyString",
      :message => "MyString"
    ))
  end

  it "renders the edit log form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => logs_path(@log), :method => "post" do
      assert_select "input#log_history", :name => "log[history]"
      assert_select "input#log_log_type", :name => "log[log_type]"
      assert_select "input#log_message", :name => "log[message]"
    end
  end
end
