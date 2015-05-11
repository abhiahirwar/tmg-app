require 'rails_helper'

RSpec.describe "pre_training_reviews/index", type: :view do
  before(:each) do
    assign(:pre_training_reviews, [
      PreTrainingReview.create!(
        :rpl => "Rpl",
        :credit_transfer => "Credit Transfer",
        :area_of_work => "Area Of Work",
        :employment => "Employment",
        :pathway => "Pathway",
        :preferred_learning_style => "Preferred Learning Style",
        :delivery_mode => "Delivery Mode",
        :speical_condition => "Speical Condition",
        :toc => false,
        :user => nil
      ),
      PreTrainingReview.create!(
        :rpl => "Rpl",
        :credit_transfer => "Credit Transfer",
        :area_of_work => "Area Of Work",
        :employment => "Employment",
        :pathway => "Pathway",
        :preferred_learning_style => "Preferred Learning Style",
        :delivery_mode => "Delivery Mode",
        :speical_condition => "Speical Condition",
        :toc => false,
        :user => nil
      )
    ])
  end

  it "renders a list of pre_training_reviews" do
    render
    assert_select "tr>td", :text => "Rpl".to_s, :count => 2
    assert_select "tr>td", :text => "Credit Transfer".to_s, :count => 2
    assert_select "tr>td", :text => "Area Of Work".to_s, :count => 2
    assert_select "tr>td", :text => "Employment".to_s, :count => 2
    assert_select "tr>td", :text => "Pathway".to_s, :count => 2
    assert_select "tr>td", :text => "Preferred Learning Style".to_s, :count => 2
    assert_select "tr>td", :text => "Delivery Mode".to_s, :count => 2
    assert_select "tr>td", :text => "Speical Condition".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
