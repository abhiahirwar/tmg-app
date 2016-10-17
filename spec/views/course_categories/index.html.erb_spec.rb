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
end
