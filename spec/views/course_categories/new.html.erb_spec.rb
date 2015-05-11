require 'rails_helper'

RSpec.describe "course_categories/new", type: :view do
  before(:each) do
    assign(:course_category, CourseCategory.new(
      :title => "MyString",
      :content => "MyString"
    ))
  end

  it "renders new course_category form" do
    render

    assert_select "form[action=?][method=?]", course_categories_path, "post" do

      assert_select "input#course_category_title[name=?]", "course_category[title]"

      assert_select "input#course_category_content[name=?]", "course_category[content]"
    end
  end
end
