require 'rails_helper'

RSpec.describe "course_categories/index", type: :view do
  before(:each) do
    assign(:course_categories, [
      CourseCategory.create!(
        :title => "Title",
        :content => "Content"
      ),
      CourseCategory.create!(
        :title => "Title",
        :content => "Content"
      )
    ])
  end

  it "renders a list of course_categories" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
  end
end
