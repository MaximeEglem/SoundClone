require 'spec_helper'

describe "researches/new.html.erb" do
  before(:each) do
    assign(:research, stub_model(Research,
      :keywords => "MyString",
      :search => "MyString",
      :results => "MyString"
    ).as_new_record)
  end

  it "renders new research form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => researches_path, :method => "post" do
      assert_select "input#research_keywords", :name => "research[keywords]"
      assert_select "input#research_search", :name => "research[search]"
      assert_select "input#research_results", :name => "research[results]"
    end
  end
end
