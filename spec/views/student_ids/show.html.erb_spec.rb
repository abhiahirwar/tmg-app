require 'rails_helper'

RSpec.describe "student_ids/show", type: :view do
  before(:each) do
    @student_id = assign(:student_id, StudentId.create!(
      :title => "Title",
      :image => "Image",
      :category => "Category",
      :enrolment_id => 1,
      :user_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/Category/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
