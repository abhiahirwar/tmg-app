require 'rails_helper'

RSpec.describe "schools/edit", type: :view do
  before(:each) do
    @school = assign(:school, School.create!(
      :highest_school_level => "MyString",
      :year => "MyString",
      :secondary_school => "MyString"
    ))
  end

  it "renders the edit school form" do
    render

    assert_select "form[action=?][method=?]", school_path(@school), "post" do

      assert_select "input#school_highest_school_level[name=?]", "school[highest_school_level]"

      assert_select "input#school_year[name=?]", "school[year]"

      assert_select "input#school_secondary_school[name=?]", "school[secondary_school]"
    end
  end
end
