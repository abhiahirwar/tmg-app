require 'rails_helper'

RSpec.describe "pre_training_reviews/edit", type: :view do
  before(:each) do
    @pre_training_review = assign(:pre_training_review, PreTrainingReview.create!(
      :rpl => "MyString",
      :credit_transfer => "MyString",
      :area_of_work => "MyString",
      :employment => "MyString",
      :pathway => "MyString",
      :preferred_learning_style => "MyString",
      :delivery_mode => "MyString",
      :speical_condition => "MyString",
      :toc => false,
      :user => nil
    ))
  end

  it "renders the edit pre_training_review form" do
    render

    assert_select "form[action=?][method=?]", pre_training_review_path(@pre_training_review), "post" do

      assert_select "input#pre_training_review_rpl[name=?]", "pre_training_review[rpl]"

      assert_select "input#pre_training_review_credit_transfer[name=?]", "pre_training_review[credit_transfer]"

      assert_select "input#pre_training_review_area_of_work[name=?]", "pre_training_review[area_of_work]"

      assert_select "input#pre_training_review_employment[name=?]", "pre_training_review[employment]"

      assert_select "input#pre_training_review_pathway[name=?]", "pre_training_review[pathway]"

      assert_select "input#pre_training_review_preferred_learning_style[name=?]", "pre_training_review[preferred_learning_style]"

      assert_select "input#pre_training_review_delivery_mode[name=?]", "pre_training_review[delivery_mode]"

      assert_select "input#pre_training_review_speical_condition[name=?]", "pre_training_review[speical_condition]"

      assert_select "input#pre_training_review_toc[name=?]", "pre_training_review[toc]"

      assert_select "input#pre_training_review_user_id[name=?]", "pre_training_review[user_id]"
    end
  end
end
