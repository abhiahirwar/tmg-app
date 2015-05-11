require "rails_helper"

RSpec.describe VicStudentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/vic_students").to route_to("vic_students#index")
    end

    it "routes to #new" do
      expect(:get => "/vic_students/new").to route_to("vic_students#new")
    end

    it "routes to #show" do
      expect(:get => "/vic_students/1").to route_to("vic_students#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/vic_students/1/edit").to route_to("vic_students#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/vic_students").to route_to("vic_students#create")
    end

    it "routes to #update" do
      expect(:put => "/vic_students/1").to route_to("vic_students#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/vic_students/1").to route_to("vic_students#destroy", :id => "1")
    end

  end
end
