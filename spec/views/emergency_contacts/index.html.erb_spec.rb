require 'rails_helper'

RSpec.describe "emergency_contacts/index", type: :view do
  before(:each) do
    assign(:emergency_contacts, [
      EmergencyContact.create!(
        :contact_name => "Contact Name",
        :relationship => "Relationship",
        :home_phone => "Home Phone",
        :mobile => "Mobile"
      ),
      EmergencyContact.create!(
        :contact_name => "Contact Name",
        :relationship => "Relationship",
        :home_phone => "Home Phone",
        :mobile => "Mobile"
      )
    ])
  end

  it "renders a list of emergency_contacts" do
    render
    assert_select "tr>td", :text => "Contact Name".to_s, :count => 2
    assert_select "tr>td", :text => "Relationship".to_s, :count => 2
    assert_select "tr>td", :text => "Home Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Mobile".to_s, :count => 2
  end
end
