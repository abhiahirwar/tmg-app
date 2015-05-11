require 'rails_helper'

RSpec.describe "vic_students/new", type: :view do
  before(:each) do
    assign(:vic_student, VicStudent.new(
      :vsn => "MyString",
      :latest_school => "MyString",
      :previous_school => "MyString"
    ))
  end

  it "renders new vic_student form" do
    render

    assert_select "form[action=?][method=?]", vic_students_path, "post" do

      assert_select "input#vic_student_vsn[name=?]", "vic_student[vsn]"

      assert_select "input#vic_student_latest_school[name=?]", "vic_student[latest_school]"

      assert_select "input#vic_student_previous_school[name=?]", "vic_student[previous_school]"
    end
  end
end
