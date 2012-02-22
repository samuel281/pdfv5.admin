require 'spec_helper'

describe "logs/new" do
  before(:each) do
    assign(:log, stub_model(Log,
      :history => nil,
      :log_type => "MyString",
      :message => "MyString"
    ).as_new_record)
  end

  it "renders new log form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => logs_path, :method => "post" do
      assert_select "input#log_history", :name => "log[history]"
      assert_select "input#log_log_type", :name => "log[log_type]"
      assert_select "input#log_message", :name => "log[message]"
    end
  end
end
