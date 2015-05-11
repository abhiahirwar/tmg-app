require 'rails_helper'

RSpec.describe "course_categories/show", type: :view do
  before(:each) do
    @course_category = assign(:course_category, CourseCategory.create!(
      :title => "Title",
      :content => "Content"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Content/)
  end
end
