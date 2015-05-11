require 'rails_helper'

RSpec.describe "enrolments/index", type: :view do
  before(:each) do
    assign(:enrolments, [
      Enrolment.create!(
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
      ),
      Enrolment.create!(
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
      )
    ])
  end

  it "renders a list of enrolments" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Delivery Mode".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Completed Quqlification".to_s, :count => 2
    assert_select "tr>td", :text => "Qualication Received Location".to_s, :count => 2
    assert_select "tr>td", :text => "Vet".to_s, :count => 2
    assert_select "tr>td", :text => "Toc".to_s, :count => 2
  end
end
