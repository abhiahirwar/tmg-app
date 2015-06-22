require 'rails_helper'

RSpec.describe "student_ids/new", type: :view do
  before(:each) do
    assign(:student_id, StudentId.new(
      :title => "MyString",
      :image => "MyString",
      :category => "MyString",
      :enrolment_id => 1,
      :user_id => 1
    ))
  end

  it "renders new student_id form" do
    render

    assert_select "form[action=?][method=?]", student_ids_path, "post" do

      assert_select "input#student_id_title[name=?]", "student_id[title]"

      assert_select "input#student_id_image[name=?]", "student_id[image]"

      assert_select "input#student_id_category[name=?]", "student_id[category]"

      assert_select "input#student_id_enrolment_id[name=?]", "student_id[enrolment_id]"

      assert_select "input#student_id_user_id[name=?]", "student_id[user_id]"
    end
  end
end
