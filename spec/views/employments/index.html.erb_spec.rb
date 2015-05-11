require 'rails_helper'

RSpec.describe "employments/index", type: :view do
  before(:each) do
    assign(:employments, [
      Employment.create!(
        :employment_status => "Employment Status",
        :recent_occupation => "Recent Occupation",
        :industry => "Industry"
      ),
      Employment.create!(
        :employment_status => "Employment Status",
        :recent_occupation => "Recent Occupation",
        :industry => "Industry"
      )
    ])
  end

  it "renders a list of employments" do
    render
    assert_select "tr>td", :text => "Employment Status".to_s, :count => 2
    assert_select "tr>td", :text => "Recent Occupation".to_s, :count => 2
    assert_select "tr>td", :text => "Industry".to_s, :count => 2
  end
end
