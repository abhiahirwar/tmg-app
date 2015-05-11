require 'rails_helper'

RSpec.describe "courses/new", type: :view do
  before(:each) do
    assign(:course, Course.new(
      :name => "MyString",
      :code => "MyString",
      :course_category => nil,
      :fee_for_service => "",
      :vet_fee => "",
      :gov_funded => "",
      :concession_gov_funded => "",
      :material_cost => "",
      :transfer_fee => "",
      :re_issue_certificate => "",
      :delivery_mode => "MyString",
      :location_of_delivery => "MyString",
      :study_duration => "MyString"
    ))
  end

  it "renders new course form" do
    render

    assert_select "form[action=?][method=?]", courses_path, "post" do

      assert_select "input#course_name[name=?]", "course[name]"

      assert_select "input#course_code[name=?]", "course[code]"

      assert_select "input#course_course_category_id[name=?]", "course[course_category_id]"

      assert_select "input#course_fee_for_service[name=?]", "course[fee_for_service]"

      assert_select "input#course_vet_fee[name=?]", "course[vet_fee]"

      assert_select "input#course_gov_funded[name=?]", "course[gov_funded]"

      assert_select "input#course_concession_gov_funded[name=?]", "course[concession_gov_funded]"

      assert_select "input#course_material_cost[name=?]", "course[material_cost]"

      assert_select "input#course_transfer_fee[name=?]", "course[transfer_fee]"

      assert_select "input#course_re_issue_certificate[name=?]", "course[re_issue_certificate]"

      assert_select "input#course_delivery_mode[name=?]", "course[delivery_mode]"

      assert_select "input#course_location_of_delivery[name=?]", "course[location_of_delivery]"

      assert_select "input#course_study_duration[name=?]", "course[study_duration]"
    end
  end
end
