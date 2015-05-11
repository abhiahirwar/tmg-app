require 'rails_helper'

RSpec.describe "courses/index", type: :view do
  before(:each) do
    assign(:courses, [
      Course.create!(
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
      ),
      Course.create!(
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
      )
    ])
  end

  it "renders a list of courses" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Delivery Mode".to_s, :count => 2
    assert_select "tr>td", :text => "Location Of Delivery".to_s, :count => 2
    assert_select "tr>td", :text => "Study Duration".to_s, :count => 2
  end
end
