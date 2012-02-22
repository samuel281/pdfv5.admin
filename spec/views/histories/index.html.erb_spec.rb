require 'spec_helper'

describe "histories/index" do
  before(:each) do
    assign(:histories, [
      stub_model(History),
      stub_model(History)
    ])
  end

  it "renders a list of histories" do
    render
  end
end
