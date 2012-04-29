require "spec_helper"

describe ResearchesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/researches" }.should route_to(:controller => "researches", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/researches/new" }.should route_to(:controller => "researches", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/researches/1" }.should route_to(:controller => "researches", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/researches/1/edit" }.should route_to(:controller => "researches", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/researches" }.should route_to(:controller => "researches", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/researches/1" }.should route_to(:controller => "researches", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/researches/1" }.should route_to(:controller => "researches", :action => "destroy", :id => "1")
    end

  end
end
