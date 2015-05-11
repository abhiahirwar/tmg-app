require 'rails_helper'

RSpec.describe "employers/index", type: :view do
  before(:each) do
    assign(:employers, [
      Employer.create!(
        :trading_name => "Trading Name",
        :contact_name => "Contact Name",
        :supervisor_name => "Supervisor Name",
        :training_address => "Training Address",
        :phone => "Phone",
        :fax => "Fax",
        :email => "Email",
        :abn => "Abn"
      ),
      Employer.create!(
        :trading_name => "Trading Name",
        :contact_name => "Contact Name",
        :supervisor_name => "Supervisor Name",
        :training_address => "Training Address",
        :phone => "Phone",
        :fax => "Fax",
        :email => "Email",
        :abn => "Abn"
      )
    ])
  end

  it "renders a list of employers" do
    render
    assert_select "tr>td", :text => "Trading Name".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Name".to_s, :count => 2
    assert_select "tr>td", :text => "Supervisor Name".to_s, :count => 2
    assert_select "tr>td", :text => "Training Address".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Fax".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Abn".to_s, :count => 2
  end
end
