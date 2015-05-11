require 'rails_helper'

RSpec.describe "vic_students/index", type: :view do
  before(:each) do
    assign(:vic_students, [
      VicStudent.create!(
        :vsn => "Vsn",
        :latest_school => "Latest School",
        :previous_school => "Previous School"
      ),
      VicStudent.create!(
        :vsn => "Vsn",
        :latest_school => "Latest School",
        :previous_school => "Previous School"
      )
    ])
  end

  it "renders a list of vic_students" do
    render
    assert_select "tr>td", :text => "Vsn".to_s, :count => 2
    assert_select "tr>td", :text => "Latest School".to_s, :count => 2
    assert_select "tr>td", :text => "Previous School".to_s, :count => 2
  end
end
