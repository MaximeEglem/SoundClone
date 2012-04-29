require 'spec_helper'

describe "researches/index.html.erb" do
  before(:each) do
    assign(:researches, [
      stub_model(Research,
        :keywords => "Keywords",
        :search => "Search",
        :results => "Results"
      ),
      stub_model(Research,
        :keywords => "Keywords",
        :search => "Search",
        :results => "Results"
      )
    ])
  end

  it "renders a list of researches" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Keywords".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Search".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Results".to_s, :count => 2
  end
end
