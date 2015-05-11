require "rails_helper"

RSpec.describe LanguageCultureDiversitiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/language_culture_diversities").to route_to("language_culture_diversities#index")
    end

    it "routes to #new" do
      expect(:get => "/language_culture_diversities/new").to route_to("language_culture_diversities#new")
    end

    it "routes to #show" do
      expect(:get => "/language_culture_diversities/1").to route_to("language_culture_diversities#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/language_culture_diversities/1/edit").to route_to("language_culture_diversities#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/language_culture_diversities").to route_to("language_culture_diversities#create")
    end

    it "routes to #update" do
      expect(:put => "/language_culture_diversities/1").to route_to("language_culture_diversities#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/language_culture_diversities/1").to route_to("language_culture_diversities#destroy", :id => "1")
    end

  end
end
