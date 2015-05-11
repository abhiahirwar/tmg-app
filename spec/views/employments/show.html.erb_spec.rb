require 'rails_helper'

RSpec.describe "employments/show", type: :view do
  before(:each) do
    @employment = assign(:employment, Employment.create!(
      :employment_status => "Employment Status",
      :recent_occupation => "Recent Occupation",
      :industry => "Industry"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Employment Status/)
    expect(rendered).to match(/Recent Occupation/)
    expect(rendered).to match(/Industry/)
  end
end
