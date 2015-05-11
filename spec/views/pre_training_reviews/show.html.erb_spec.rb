require 'rails_helper'

RSpec.describe "pre_training_reviews/show", type: :view do
  before(:each) do
    @pre_training_review = assign(:pre_training_review, PreTrainingReview.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Rpl/)
    expect(rendered).to match(/Credit Transfer/)
    expect(rendered).to match(/Area Of Work/)
    expect(rendered).to match(/Employment/)
    expect(rendered).to match(/Pathway/)
    expect(rendered).to match(/Preferred Learning Style/)
    expect(rendered).to match(/Delivery Mode/)
    expect(rendered).to match(/Speical Condition/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
  end
end
