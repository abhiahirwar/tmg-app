require "rails_helper"

RSpec.describe StudentIdsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/student_ids").to route_to("student_ids#index")
    end

    it "routes to #new" do
      expect(:get => "/student_ids/new").to route_to("student_ids#new")
    end

    it "routes to #show" do
      expect(:get => "/student_ids/1").to route_to("student_ids#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/student_ids/1/edit").to route_to("student_ids#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/student_ids").to route_to("student_ids#create")
    end

    it "routes to #update" do
      expect(:put => "/student_ids/1").to route_to("student_ids#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/student_ids/1").to route_to("student_ids#destroy", :id => "1")
    end

  end
end
