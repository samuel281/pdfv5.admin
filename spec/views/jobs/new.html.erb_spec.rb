require 'spec_helper'

describe "jobs/new" do
  before(:each) do
    assign(:job, stub_model(Job,
      :name => "MyString",
      :active => false,
      :arguments => "MyString",
      :schedule_min => 1,
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new job form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => jobs_path, :method => "post" do
      assert_select "input#job_name", :name => "job[name]"
      assert_select "input#job_active", :name => "job[active]"
      assert_select "input#job_arguments", :name => "job[arguments]"
      assert_select "input#job_schedule_min", :name => "job[schedule_min]"
      assert_select "textarea#job_description", :name => "job[description]"
    end
  end
end
