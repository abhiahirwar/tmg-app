require 'rails_helper'

RSpec.describe "schools/index", type: :view do
  before(:each) do
    assign(:schools, [
      School.create!(
        :highest_school_level => "Highest School Level",
        :year => "Year",
        :secondary_school => "Secondary School"
      ),
      School.create!(
        :highest_school_level => "Highest School Level",
        :year => "Year",
        :secondary_school => "Secondary School"
      )
    ])
  end

  it "renders a list of schools" do
    render
    assert_select "tr>td", :text => "Highest School Level".to_s, :count => 2
    assert_select "tr>td", :text => "Year".to_s, :count => 2
    assert_select "tr>td", :text => "Secondary School".to_s, :count => 2
  end
end
