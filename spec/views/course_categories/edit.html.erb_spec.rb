require 'rails_helper'

RSpec.describe "course_categories/edit", type: :view do
  before(:each) do
    @course_category = assign(:course_category, CourseCategory.create!(
      :title => "MyString",
      :content => "MyString"
    ))
  end

  it "renders the edit course_category form" do
    render

    assert_select "form[action=?][method=?]", course_category_path(@course_category), "post" do

      assert_select "input#course_category_title[name=?]", "course_category[title]"

      assert_select "input#course_category_content[name=?]", "course_category[content]"
    end
  end
end
