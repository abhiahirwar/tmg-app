require "rails_helper"

RSpec.describe PreTrainingReviewsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/pre_training_reviews").to route_to("pre_training_reviews#index")
    end

    it "routes to #new" do
      expect(:get => "/pre_training_reviews/new").to route_to("pre_training_reviews#new")
    end

    it "routes to #show" do
      expect(:get => "/pre_training_reviews/1").to route_to("pre_training_reviews#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/pre_training_reviews/1/edit").to route_to("pre_training_reviews#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/pre_training_reviews").to route_to("pre_training_reviews#create")
    end

    it "routes to #update" do
      expect(:put => "/pre_training_reviews/1").to route_to("pre_training_reviews#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/pre_training_reviews/1").to route_to("pre_training_reviews#destroy", :id => "1")
    end

  end
end
