require 'rails_helper'

RSpec.describe "schools/new", type: :view do
  before(:each) do
    assign(:school, School.new(
      :highest_school_level => "MyString",
      :year => "MyString",
      :secondary_school => "MyString"
    ))
  end

  it "renders new school form" do
    render

    assert_select "form[action=?][method=?]", schools_path, "post" do

      assert_select "input#school_highest_school_level[name=?]", "school[highest_school_level]"

      assert_select "input#school_year[name=?]", "school[year]"

      assert_select "input#school_secondary_school[name=?]", "school[secondary_school]"
    end
  end
end
