require 'rails_helper'

RSpec.describe "employers/show", type: :view do
  before(:each) do
    @employer = assign(:employer, Employer.create!(
      :trading_name => "Trading Name",
      :contact_name => "Contact Name",
      :supervisor_name => "Supervisor Name",
      :training_address => "Training Address",
      :phone => "Phone",
      :fax => "Fax",
      :email => "Email",
      :abn => "Abn"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Trading Name/)
    expect(rendered).to match(/Contact Name/)
    expect(rendered).to match(/Supervisor Name/)
    expect(rendered).to match(/Training Address/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Fax/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Abn/)
  end
end
