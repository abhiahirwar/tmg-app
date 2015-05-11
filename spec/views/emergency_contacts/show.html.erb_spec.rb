require 'rails_helper'

RSpec.describe "emergency_contacts/show", type: :view do
  before(:each) do
    @emergency_contact = assign(:emergency_contact, EmergencyContact.create!(
      :contact_name => "Contact Name",
      :relationship => "Relationship",
      :home_phone => "Home Phone",
      :mobile => "Mobile"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Contact Name/)
    expect(rendered).to match(/Relationship/)
    expect(rendered).to match(/Home Phone/)
    expect(rendered).to match(/Mobile/)
  end
end
