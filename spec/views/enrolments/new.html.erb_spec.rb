require 'rails_helper'

RSpec.describe "enrolments/new", type: :view do
  before(:each) do
    assign(:enrolment, Enrolment.new(
      :course => nil,
      :delivery_mode => "MyString",
      :student => nil,
      :address => nil,
      :employer => nil,
      :emergeny_contact => nil,
      :language_culture_diversity => nil,
      :school => nil,
      :employment => nil,
      :vic_student => nil,
      :completed_quqlification => "MyString",
      :qualication_received_location => "MyString",
      :vet => "MyString",
      :toc => "MyString"
    ))
  end

  it "renders new enrolment form" do
    render

    assert_select "form[action=?][method=?]", enrolments_path, "post" do

      assert_select "input#enrolment_course_id[name=?]", "enrolment[course_id]"

      assert_select "input#enrolment_delivery_mode[name=?]", "enrolment[delivery_mode]"

      assert_select "input#enrolment_student_id[name=?]", "enrolment[student_id]"

      assert_select "input#enrolment_address_id[name=?]", "enrolment[address_id]"

      assert_select "input#enrolment_employer_id[name=?]", "enrolment[employer_id]"

      assert_select "input#enrolment_emergeny_contact_id[name=?]", "enrolment[emergeny_contact_id]"

      assert_select "input#enrolment_language_culture_diversity_id[name=?]", "enrolment[language_culture_diversity_id]"

      assert_select "input#enrolment_school_id[name=?]", "enrolment[school_id]"

      assert_select "input#enrolment_employment_id[name=?]", "enrolment[employment_id]"

      assert_select "input#enrolment_vic_student_id[name=?]", "enrolment[vic_student_id]"

      assert_select "input#enrolment_completed_quqlification[name=?]", "enrolment[completed_quqlification]"

      assert_select "input#enrolment_qualication_received_location[name=?]", "enrolment[qualication_received_location]"

      assert_select "input#enrolment_vet[name=?]", "enrolment[vet]"

      assert_select "input#enrolment_toc[name=?]", "enrolment[toc]"
    end
  end
end
