require 'spec_helper'

describe "researches/show.html.erb" do
  before(:each) do
    @research = assign(:research, stub_model(Research,
      :keywords => "Keywords",
      :search => "Search",
      :results => "Results"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Keywords/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Search/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Results/)
  end
end
