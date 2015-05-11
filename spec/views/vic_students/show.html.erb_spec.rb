require 'rails_helper'

RSpec.describe "vic_students/show", type: :view do
  before(:each) do
    @vic_student = assign(:vic_student, VicStudent.create!(
      :vsn => "Vsn",
      :latest_school => "Latest School",
      :previous_school => "Previous School"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Vsn/)
    expect(rendered).to match(/Latest School/)
    expect(rendered).to match(/Previous School/)
  end
end
