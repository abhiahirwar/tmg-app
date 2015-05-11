require 'rails_helper'

RSpec.describe "courses/show", type: :view do
  before(:each) do
    @course = assign(:course, Course.create!(
      :name => "Name",
      :code => "Code",
      :course_category => nil,
      :fee_for_service => "",
      :vet_fee => "",
      :gov_funded => "",
      :concession_gov_funded => "",
      :material_cost => "",
      :transfer_fee => "",
      :re_issue_certificate => "",
      :delivery_mode => "Delivery Mode",
      :location_of_delivery => "Location Of Delivery",
      :study_duration => "Study Duration"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Code/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Delivery Mode/)
    expect(rendered).to match(/Location Of Delivery/)
    expect(rendered).to match(/Study Duration/)
  end
end
