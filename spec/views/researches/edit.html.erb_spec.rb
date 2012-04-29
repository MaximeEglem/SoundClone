require 'spec_helper'

describe "researches/edit.html.erb" do
  before(:each) do
    @research = assign(:research, stub_model(Research,
      :keywords => "MyString",
      :search => "MyString",
      :results => "MyString"
    ))
  end

  it "renders the edit research form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => researches_path(@research), :method => "post" do
      assert_select "input#research_keywords", :name => "research[keywords]"
      assert_select "input#research_search", :name => "research[search]"
      assert_select "input#research_results", :name => "research[results]"
    end
  end
end
