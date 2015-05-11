require 'rails_helper'

RSpec.describe "vic_students/edit", type: :view do
  before(:each) do
    @vic_student = assign(:vic_student, VicStudent.create!(
      :vsn => "MyString",
      :latest_school => "MyString",
      :previous_school => "MyString"
    ))
  end

  it "renders the edit vic_student form" do
    render

    assert_select "form[action=?][method=?]", vic_student_path(@vic_student), "post" do

      assert_select "input#vic_student_vsn[name=?]", "vic_student[vsn]"

      assert_select "input#vic_student_latest_school[name=?]", "vic_student[latest_school]"

      assert_select "input#vic_student_previous_school[name=?]", "vic_student[previous_school]"
    end
  end
end
