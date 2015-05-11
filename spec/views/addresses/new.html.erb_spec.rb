require 'rails_helper'

RSpec.describe "addresses/new", type: :view do
  before(:each) do
    assign(:address, Address.new(
      :property_name => "MyString",
      :street1 => "MyString",
      :street2 => "MyString",
      :suburb => "MyString",
      :postcode => "MyString",
      :state => "MyString",
      :country => "MyString"
    ))
  end

  it "renders new address form" do
    render

    assert_select "form[action=?][method=?]", addresses_path, "post" do

      assert_select "input#address_property_name[name=?]", "address[property_name]"

      assert_select "input#address_street1[name=?]", "address[street1]"

      assert_select "input#address_street2[name=?]", "address[street2]"

      assert_select "input#address_suburb[name=?]", "address[suburb]"

      assert_select "input#address_postcode[name=?]", "address[postcode]"

      assert_select "input#address_state[name=?]", "address[state]"

      assert_select "input#address_country[name=?]", "address[country]"
    end
  end
end
