require 'rails_helper'

RSpec.describe "enrolments/show", type: :view do
  before(:each) do
    @enrolment = assign(:enrolment, Enrolment.create!(
      :course => nil,
      :delivery_mode => "Delivery Mode",
      :student => nil,
      :address => nil,
      :employer => nil,
      :emergeny_contact => nil,
      :language_culture_diversity => nil,
      :school => nil,
      :employment => nil,
      :vic_student => nil,
      :completed_quqlification => "Completed Quqlification",
      :qualication_received_location => "Qualication Received Location",
      :vet => "Vet",
      :toc => "Toc"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Delivery Mode/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Completed Quqlification/)
    expect(rendered).to match(/Qualication Received Location/)
    expect(rendered).to match(/Vet/)
    expect(rendered).to match(/Toc/)
  end
end
