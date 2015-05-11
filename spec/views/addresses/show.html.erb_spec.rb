require 'rails_helper'

RSpec.describe "addresses/show", type: :view do
  before(:each) do
    @address = assign(:address, Address.create!(
      :property_name => "Property Name",
      :street1 => "Street1",
      :street2 => "Street2",
      :suburb => "Suburb",
      :postcode => "Postcode",
      :state => "State",
      :country => "Country"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Property Name/)
    expect(rendered).to match(/Street1/)
    expect(rendered).to match(/Street2/)
    expect(rendered).to match(/Suburb/)
    expect(rendered).to match(/Postcode/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Country/)
  end
end
