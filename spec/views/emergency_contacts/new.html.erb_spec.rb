require 'rails_helper'

RSpec.describe "emergency_contacts/new", type: :view do
  before(:each) do
    assign(:emergency_contact, EmergencyContact.new(
      :contact_name => "MyString",
      :relationship => "MyString",
      :home_phone => "MyString",
      :mobile => "MyString"
    ))
  end

  it "renders new emergency_contact form" do
    render

    assert_select "form[action=?][method=?]", emergency_contacts_path, "post" do

      assert_select "input#emergency_contact_contact_name[name=?]", "emergency_contact[contact_name]"

      assert_select "input#emergency_contact_relationship[name=?]", "emergency_contact[relationship]"

      assert_select "input#emergency_contact_home_phone[name=?]", "emergency_contact[home_phone]"

      assert_select "input#emergency_contact_mobile[name=?]", "emergency_contact[mobile]"
    end
  end
end
