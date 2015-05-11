require 'rails_helper'

RSpec.describe "addresses/index", type: :view do
  before(:each) do
    assign(:addresses, [
      Address.create!(
        :property_name => "Property Name",
        :street1 => "Street1",
        :street2 => "Street2",
        :suburb => "Suburb",
        :postcode => "Postcode",
        :state => "State",
        :country => "Country"
      ),
      Address.create!(
        :property_name => "Property Name",
        :street1 => "Street1",
        :street2 => "Street2",
        :suburb => "Suburb",
        :postcode => "Postcode",
        :state => "State",
        :country => "Country"
      )
    ])
  end

  it "renders a list of addresses" do
    render
    assert_select "tr>td", :text => "Property Name".to_s, :count => 2
    assert_select "tr>td", :text => "Street1".to_s, :count => 2
    assert_select "tr>td", :text => "Street2".to_s, :count => 2
    assert_select "tr>td", :text => "Suburb".to_s, :count => 2
    assert_select "tr>td", :text => "Postcode".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
  end
end
