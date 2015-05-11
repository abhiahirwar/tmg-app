require 'rails_helper'

RSpec.describe "employers/new", type: :view do
  before(:each) do
    assign(:employer, Employer.new(
      :trading_name => "MyString",
      :contact_name => "MyString",
      :supervisor_name => "MyString",
      :training_address => "MyString",
      :phone => "MyString",
      :fax => "MyString",
      :email => "MyString",
      :abn => "MyString"
    ))
  end

  it "renders new employer form" do
    render

    assert_select "form[action=?][method=?]", employers_path, "post" do

      assert_select "input#employer_trading_name[name=?]", "employer[trading_name]"

      assert_select "input#employer_contact_name[name=?]", "employer[contact_name]"

      assert_select "input#employer_supervisor_name[name=?]", "employer[supervisor_name]"

      assert_select "input#employer_training_address[name=?]", "employer[training_address]"

      assert_select "input#employer_phone[name=?]", "employer[phone]"

      assert_select "input#employer_fax[name=?]", "employer[fax]"

      assert_select "input#employer_email[name=?]", "employer[email]"

      assert_select "input#employer_abn[name=?]", "employer[abn]"
    end
  end
end
