require 'rails_helper'

RSpec.describe "schools/show", type: :view do
  before(:each) do
    @school = assign(:school, School.create!(
      :highest_school_level => "Highest School Level",
      :year => "Year",
      :secondary_school => "Secondary School"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Highest School Level/)
    expect(rendered).to match(/Year/)
    expect(rendered).to match(/Secondary School/)
  end
end
