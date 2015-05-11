require 'rails_helper'

RSpec.describe "students/new", type: :view do
  before(:each) do
    assign(:student, Student.new(
      :title => "MyString",
      :surname => "MyString",
      :firstname => "MyString",
      :middlename => "MyString",
      :home_phone => "MyString",
      :mobile => "MyString",
      :email => "MyString",
      :city_of_birth => "MyString",
      :usi => "MyString",
      :disabiltiy => "MyString",
      :aus_citizen => "MyString",
      :study_reason => "MyString"
    ))
  end

  it "renders new student form" do
    render

    assert_select "form[action=?][method=?]", students_path, "post" do

      assert_select "input#student_title[name=?]", "student[title]"

      assert_select "input#student_surname[name=?]", "student[surname]"

      assert_select "input#student_firstname[name=?]", "student[firstname]"

      assert_select "input#student_middlename[name=?]", "student[middlename]"

      assert_select "input#student_home_phone[name=?]", "student[home_phone]"

      assert_select "input#student_mobile[name=?]", "student[mobile]"

      assert_select "input#student_email[name=?]", "student[email]"

      assert_select "input#student_city_of_birth[name=?]", "student[city_of_birth]"

      assert_select "input#student_usi[name=?]", "student[usi]"

      assert_select "input#student_disabiltiy[name=?]", "student[disabiltiy]"

      assert_select "input#student_aus_citizen[name=?]", "student[aus_citizen]"

      assert_select "input#student_study_reason[name=?]", "student[study_reason]"
    end
  end
end
